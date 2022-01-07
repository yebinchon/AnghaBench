; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_numtoa.c_refid_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_numtoa.c_refid_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @refid_str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @numtoa(i32 %11)
  store i8* %12, i8** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @LIB_GETBUF(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 46, i8* %17, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i32 @memcpy(i8* %19, i32* %4, i32 4)
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 46, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %13, %10
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i8* @numtoa(i32) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
