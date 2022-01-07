; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_exec_copyin_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_exec_copyin_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_args = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_exec_copyin_args(%struct.image_args* %0, i8* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.image_args*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.image_args* %0, %struct.image_args** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.image_args*, %struct.image_args** %7, align 8
  %18 = call i32 @bzero(%struct.image_args* %17, i32 4)
  %19 = load i64*, i64** %10, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @EFAULT, align 4
  store i32 %22, i32* %6, align 4
  br label %97

23:                                               ; preds = %5
  %24 = load %struct.image_args*, %struct.image_args** %7, align 8
  %25 = call i32 @exec_alloc_args(%struct.image_args* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %6, align 4
  br label %97

30:                                               ; preds = %23
  %31 = load %struct.image_args*, %struct.image_args** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @exec_args_add_fname(%struct.image_args* %31, i8* %32, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %93

38:                                               ; preds = %30
  %39 = load i64*, i64** %10, align 8
  store i64* %39, i64** %14, align 8
  br label %40

40:                                               ; preds = %62, %38
  %41 = load i64*, i64** %14, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %14, align 8
  %43 = ptrtoint i64* %41 to i32
  %44 = call i32 @copyin(i32 %43, i64* %15, i32 8)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %93

48:                                               ; preds = %40
  %49 = load i64, i64* %15, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %63

52:                                               ; preds = %48
  %53 = load i64, i64* %15, align 8
  %54 = call i8* @PTRIN(i64 %53)
  store i8* %54, i8** %12, align 8
  %55 = load %struct.image_args*, %struct.image_args** %7, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* @UIO_USERSPACE, align 4
  %58 = call i32 @exec_args_add_arg(%struct.image_args* %55, i8* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %93

62:                                               ; preds = %52
  br label %40

63:                                               ; preds = %51
  %64 = load i64*, i64** %11, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load i64*, i64** %11, align 8
  store i64* %67, i64** %14, align 8
  br label %68

68:                                               ; preds = %90, %66
  %69 = load i64*, i64** %14, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %14, align 8
  %71 = ptrtoint i64* %69 to i32
  %72 = call i32 @copyin(i32 %71, i64* %15, i32 8)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %93

76:                                               ; preds = %68
  %77 = load i64, i64* %15, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %91

80:                                               ; preds = %76
  %81 = load i64, i64* %15, align 8
  %82 = call i8* @PTRIN(i64 %81)
  store i8* %82, i8** %13, align 8
  %83 = load %struct.image_args*, %struct.image_args** %7, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* @UIO_USERSPACE, align 4
  %86 = call i32 @exec_args_add_env(%struct.image_args* %83, i8* %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %93

90:                                               ; preds = %80
  br label %68

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %63
  store i32 0, i32* %6, align 4
  br label %97

93:                                               ; preds = %89, %75, %61, %47, %37
  %94 = load %struct.image_args*, %struct.image_args** %7, align 8
  %95 = call i32 @exec_free_args(%struct.image_args* %94)
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %92, %28, %21
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @bzero(%struct.image_args*, i32) #1

declare dso_local i32 @exec_alloc_args(%struct.image_args*) #1

declare dso_local i32 @exec_args_add_fname(%struct.image_args*, i8*, i32) #1

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i8* @PTRIN(i64) #1

declare dso_local i32 @exec_args_add_arg(%struct.image_args*, i8*, i32) #1

declare dso_local i32 @exec_args_add_env(%struct.image_args*, i8*, i32) #1

declare dso_local i32 @exec_free_args(%struct.image_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
