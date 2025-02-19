; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_suffix.c_suffix_get_dest_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_suffix.c_suffix_get_dest_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_mode = common dso_local global i64 0, align 8
@MODE_COMPRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @suffix_get_dest_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @opt_mode, align 8
  %11 = load i64, i64* @MODE_COMPRESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i8* @compressed_name(i8* %14, i64 %15)
  br label %21

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i8* @uncompressed_name(i8* %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i8* [ %16, %13 ], [ %20, %17 ]
  ret i8* %22
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @compressed_name(i8*, i64) #1

declare dso_local i8* @uncompressed_name(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
