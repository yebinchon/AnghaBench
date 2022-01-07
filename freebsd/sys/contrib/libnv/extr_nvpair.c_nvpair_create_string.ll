; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@NV_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_create_string(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @ERRNO_SET(i32 %12)
  store i32* null, i32** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @nv_strdup(i8* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %39

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @NV_TYPE_STRING, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %7, align 8
  %31 = call i32* @nvpair_allocv(i8* %25, i32 %26, i32 %29, i64 %30, i32 0)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @nv_free(i8* %35)
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %37, %19, %11
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i8* @nv_strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @nvpair_allocv(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @nv_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
