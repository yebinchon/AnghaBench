; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string_sprintf.c_append_uint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string_sprintf.c_append_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@append_uint.digits = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i32, i32)* @append_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_uint(%struct.archive_string* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 %12, %13
  %15 = load i32, i32* %6, align 4
  call void @append_uint(%struct.archive_string* %11, i32 %14, i32 %15)
  br label %16

16:                                               ; preds = %10, %3
  %17 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = urem i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [17 x i8], [17 x i8]* @append_uint.digits, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @archive_strappend_char(%struct.archive_string* %17, i8 signext %23)
  ret void
}

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
