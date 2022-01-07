; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_file.c_linux_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_mount_args = type { i32, i32, i32, i32 }

@MFSNAMELEN = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ext2\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ext2fs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"linprocfs\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vfat\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"msdosfs\00", align 1
@LINUX_MS_RDONLY = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@LINUX_MS_NOSUID = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@LINUX_MS_NOEXEC = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@LINUX_MS_REMOUNT = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"from\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_mount(%struct.thread* %0, %struct.linux_mount_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_mount_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_mount_args* %1, %struct.linux_mount_args** %4, align 8
  %11 = load i32, i32* @MFSNAMELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MNAMELEN, align 4
  %16 = load i32, i32* @M_TEMP, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call i8* @malloc(i32 %15, i32 %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* @MNAMELEN, align 4
  %20 = load i32, i32* @M_TEMP, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @malloc(i32 %19, i32 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %24 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MFSNAMELEN, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @copyinstr(i32 %25, i8* %14, i32 %27, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %127

32:                                               ; preds = %2
  %33 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %34 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @MNAMELEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @copyinstr(i32 %35, i8* %36, i32 %38, i32* null)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %127

43:                                               ; preds = %32
  %44 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %45 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @MNAMELEN, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @copyinstr(i32 %46, i8* %47, i32 %49, i32* null)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %127

54:                                               ; preds = %43
  %55 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %71

59:                                               ; preds = %54
  %60 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %70

64:                                               ; preds = %59
  %65 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %70, %57
  store i32 0, i32* %10, align 4
  %72 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %73 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -65536
  %76 = icmp eq i32 %75, -1058209792
  br i1 %76, label %77, label %122

77:                                               ; preds = %71
  %78 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %79 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LINUX_MS_RDONLY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @MNT_RDONLY, align 4
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %90 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LINUX_MS_NOSUID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @MNT_NOSUID, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %101 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @LINUX_MS_NOEXEC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* @MNT_NOEXEC, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %99
  %111 = load %struct.linux_mount_args*, %struct.linux_mount_args** %4, align 8
  %112 = getelementptr inbounds %struct.linux_mount_args, %struct.linux_mount_args* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @LINUX_MS_REMOUNT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @MNT_UPDATE, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %117, %110
  br label %122

122:                                              ; preds = %121, %71
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @kernel_vmount(i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %125, i32* null)
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %122, %53, %42, %31
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* @M_TEMP, align 4
  %130 = call i32 @free(i8* %128, i32 %129)
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* @M_TEMP, align 4
  %133 = call i32 @free(i8* %131, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @kernel_vmount(i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @free(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
