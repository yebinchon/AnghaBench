; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_number_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_unpack_number_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i64 }

@NV_TYPE_NUMBER_ARRAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvpair_unpack_number_array(i32 %0, %struct.TYPE_3__* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NV_TYPE_NUMBER_ARRAY, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %4
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %35, %30, %4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @ERRNO_SET(i32 %48)
  store i8* null, i8** %5, align 8
  br label %95

50:                                               ; preds = %40
  %51 = load i64, i64* %11, align 8
  %52 = call i64* @nv_malloc(i64 %51)
  store i64* %52, i64** %10, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = icmp eq i64* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8* null, i8** %5, align 8
  br label %95

56:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %86, %56
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @be64dec(i8* %67)
  %69 = load i64*, i64** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  br label %80

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @le64dec(i8* %74)
  %76 = load i64*, i64** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  store i8* %82, i8** %8, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 8
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %57

89:                                               ; preds = %57
  %90 = load i64*, i64** %10, align 8
  %91 = ptrtoint i64* %90 to i64
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load i8*, i8** %8, align 8
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %89, %55, %47
  %96 = load i8*, i8** %5, align 8
  ret i8* %96
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @ERRNO_SET(i32) #1

declare dso_local i64* @nv_malloc(i64) #1

declare dso_local i64 @be64dec(i8*) #1

declare dso_local i64 @le64dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
