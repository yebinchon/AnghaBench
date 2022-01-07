; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_stat_get_args = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_7__ = type { i8* }

@CLOUDABI_LOOKUP_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@CLOUDABI_FILETYPE_BLOCK_DEVICE = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_CHARACTER_DEVICE = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_DIRECTORY = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_SOCKET_STREAM = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_REGULAR_FILE = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_SYMBOLIC_LINK = common dso_local global i8* null, align 8
@CLOUDABI_FILETYPE_UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_stat_get(%struct.thread* %0, %struct.cloudabi_sys_file_stat_get_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_stat_get_args*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_stat_get_args* %1, %struct.cloudabi_sys_file_stat_get_args** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 8)
  %11 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %5, align 8
  %12 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %5, align 8
  %15 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @copyin_path(i32 %13, i32 %16, i8** %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %120

22:                                               ; preds = %2
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %5, align 8
  %25 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CLOUDABI_LOOKUP_SYMLINK_FOLLOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %5, align 8
  %37 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @UIO_SYSSPACE, align 4
  %42 = call i32 @kern_statat(%struct.thread* %23, i32 %35, i32 %39, i8* %40, i32 %41, %struct.stat* %6, i32* null)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @cloudabi_freestr(i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %34
  %50 = call i32 @convert_stat(%struct.stat* %6, %struct.TYPE_7__* %7)
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @S_ISBLK(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** @CLOUDABI_FILETYPE_BLOCK_DEVICE, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  br label %115

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @S_ISCHR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** @CLOUDABI_FILETYPE_CHARACTER_DEVICE, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  br label %114

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISDIR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** @CLOUDABI_FILETYPE_DIRECTORY, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  br label %113

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISFIFO(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** @CLOUDABI_FILETYPE_SOCKET_STREAM, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  br label %112

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISREG(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** @CLOUDABI_FILETYPE_REGULAR_FILE, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  br label %111

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @S_ISSOCK(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** @CLOUDABI_FILETYPE_SOCKET_STREAM, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  br label %110

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @S_ISLNK(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** @CLOUDABI_FILETYPE_SYMBOLIC_LINK, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %104, i8** %105, align 8
  br label %109

106:                                              ; preds = %98
  %107 = load i8*, i8** @CLOUDABI_FILETYPE_UNKNOWN, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %95
  br label %111

111:                                              ; preds = %110, %87
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112, %71
  br label %114

114:                                              ; preds = %113, %63
  br label %115

115:                                              ; preds = %114, %55
  %116 = load %struct.cloudabi_sys_file_stat_get_args*, %struct.cloudabi_sys_file_stat_get_args** %5, align 8
  %117 = getelementptr inbounds %struct.cloudabi_sys_file_stat_get_args, %struct.cloudabi_sys_file_stat_get_args* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @copyout(%struct.TYPE_7__* %7, i32 %118, i32 8)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %47, %20
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @copyin_path(i32, i32, i8**) #1

declare dso_local i32 @kern_statat(%struct.thread*, i32, i32, i8*, i32, %struct.stat*, i32*) #1

declare dso_local i32 @cloudabi_freestr(i8*) #1

declare dso_local i32 @convert_stat(%struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
