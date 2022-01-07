; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@NV_TYPE_DESCRIPTOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_unpack_descriptor(i32 %0, %struct.TYPE_3__* %1, i8* %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NV_TYPE_DESCRIPTOR, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @ERRNO_SET(i32 %28)
  store i8* null, i8** %7, align 8
  br label %73

30:                                               ; preds = %6
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @ERRNO_SET(i32 %35)
  store i8* null, i8** %7, align 8
  br label %73

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @be64dec(i8* %41)
  store i64 %42, i64* %14, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @le64dec(i8* %44)
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* %14, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @ERRNO_SET(i32 %50)
  store i8* null, i8** %7, align 8
  br label %73

52:                                               ; preds = %46
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @ERRNO_SET(i32 %57)
  store i8* null, i8** %7, align 8
  br label %73

59:                                               ; preds = %52
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, 8
  store i64 %71, i64* %69, align 8
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %59, %56, %49, %34, %27
  %74 = load i8*, i8** %7, align 8
  ret i8* %74
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i64 @be64dec(i8*) #1

declare dso_local i64 @le64dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
