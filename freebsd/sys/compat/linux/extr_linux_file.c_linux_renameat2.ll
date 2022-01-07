; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_renameat2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_renameat2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_renameat2_args = type { i32, i32, i32, i32, i32 }

@LINUX_RENAME_EXCHANGE = common dso_local global i32 0, align 4
@LINUX_RENAME_NOREPLACE = common dso_local global i32 0, align 4
@LINUX_RENAME_WHITEOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"renameat2 unsupported flags 0x%x\00", align 1
@LINUX_AT_FDCWD = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_renameat2(%struct.thread* %0, %struct.linux_renameat2_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_renameat2_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_renameat2_args* %1, %struct.linux_renameat2_args** %5, align 8
  %11 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %2
  %16 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LINUX_RENAME_EXCHANGE, align 4
  %20 = load i32, i32* @LINUX_RENAME_NOREPLACE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LINUX_RENAME_WHITEOUT, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %18, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %113

29:                                               ; preds = %15
  %30 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %31 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LINUX_RENAME_EXCHANGE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LINUX_RENAME_NOREPLACE, align 4
  %41 = load i32, i32* @LINUX_RENAME_WHITEOUT, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %3, align 4
  br label %113

47:                                               ; preds = %36, %29
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %50 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @linux_msg(%struct.thread* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %113

54:                                               ; preds = %2
  %55 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %56 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @AT_FDCWD, align 4
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %64 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ]
  store i32 %67, i32* %9, align 4
  %68 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %69 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LINUX_AT_FDCWD, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @AT_FDCWD, align 4
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %77 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  br label %79

79:                                               ; preds = %75, %73
  %80 = phi i32 [ %74, %73 ], [ %78, %75 ]
  store i32 %80, i32* %10, align 4
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %83 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @LCONVPATHEXIST_AT(%struct.thread* %81, i32 %84, i8** %6, i32 %85)
  %87 = load %struct.thread*, %struct.thread** %4, align 8
  %88 = load %struct.linux_renameat2_args*, %struct.linux_renameat2_args** %5, align 8
  %89 = getelementptr inbounds %struct.linux_renameat2_args, %struct.linux_renameat2_args* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UIO_USERSPACE, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @linux_emul_convpath(%struct.thread* %87, i32 %90, i32 %91, i8** %7, i32 1, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @LFREEPATH(i8* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %113

100:                                              ; preds = %79
  %101 = load %struct.thread*, %struct.thread** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* @UIO_SYSSPACE, align 4
  %107 = call i32 @kern_renameat(%struct.thread* %101, i32 %102, i8* %103, i32 %104, i8* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @LFREEPATH(i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @LFREEPATH(i8* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %100, %96, %47, %45, %27
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

declare dso_local i32 @LCONVPATHEXIST_AT(%struct.thread*, i32, i8**, i32) #1

declare dso_local i32 @linux_emul_convpath(%struct.thread*, i32, i32, i8**, i32, i32) #1

declare dso_local i32 @LFREEPATH(i8*) #1

declare dso_local i32 @kern_renameat(%struct.thread*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
