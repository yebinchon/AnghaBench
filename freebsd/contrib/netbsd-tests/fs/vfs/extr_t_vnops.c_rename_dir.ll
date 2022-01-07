; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rename not supported by file system\00", align 1
@USES_DIRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dir1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mkdir 1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dir2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mkdir 2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dir2/subdir\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mkdir 3\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dir1/file\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"create file\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"stat of file\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dir3\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"rename 1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"dir3/.\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"rename 2\00", align 1
@EISDIR = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"rename 3\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"dir2/dir\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"rename 4\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"dir2/subdir/dir2\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"rename 5\00", align 1
@ENOTEMPTY = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"rename 6\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"dir2/somedir\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"rename 7\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"dir2/somedir/../../dir3\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"rename 8\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"dir2/../dir3\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"rename 9\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"parent/dir1\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"parent/dir2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @rename_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_dir(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @FSTYPE_RUMPFS(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i32, i32* @USES_DIRS, align 4
  %28 = trunc i64 %12 to i32
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @md(i8* %14, i32 %28, i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @rump_sys_mkdir(i8* %14, i32 511)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = trunc i64 %16 to i32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @md(i8* %17, i32 %36, i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @rump_sys_mkdir(i8* %17, i32 511)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  %44 = trunc i64 %16 to i32
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @md(i8* %17, i32 %44, i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 @rump_sys_mkdir(i8* %17, i32 511)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = trunc i64 %19 to i32
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @md(i8* %20, i32 %52, i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32, i32* @S_IFREG, align 4
  %56 = or i32 %55, 511
  %57 = call i32 @rump_sys_mknod(i8* %20, i32 %56, i32 -1)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  %62 = call i32 @rump_sys_stat(i8* %20, %struct.stat* %9)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = trunc i64 %19 to i32
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @md(i8* %20, i32 %67, i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %70 = call i32 @rump_sys_rename(i8* %14, i8* %20)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  %75 = call i32 @checkfile(i8* %20, %struct.stat* %9)
  %76 = trunc i64 %12 to i32
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @md(i8* %14, i32 %76, i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %79 = call i32 @rump_sys_rename(i8* %14, i8* %20)
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EINVAL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %74
  %86 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = call i32 @rump_sys_rename(i8* %20, i8* %14)
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @errno, align 8
  %92 = load i64, i64* @EISDIR, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %87
  %95 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90
  %97 = call i32 @checkfile(i8* %20, %struct.stat* %9)
  %98 = trunc i64 %12 to i32
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @md(i8* %14, i32 %98, i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %101 = trunc i64 %16 to i32
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @md(i8* %17, i32 %101, i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %104 = call i32 @rump_sys_rename(i8* %17, i8* %14)
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %110, label %106

106:                                              ; preds = %96
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @EINVAL, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %96
  %111 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %106
  %113 = trunc i64 %12 to i32
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @md(i8* %14, i32 %113, i8* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %116 = call i32 @rump_sys_rename(i8* %17, i8* %14)
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINVAL, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %112
  %123 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %118
  %125 = call i32 @checkfile(i8* %20, %struct.stat* %9)
  %126 = call i32 @rump_sys_rename(i8* %17, i8* %20)
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* @errno, align 8
  %130 = load i64, i64* @ENOTEMPTY, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128, %124
  %133 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128
  %135 = trunc i64 %12 to i32
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @md(i8* %14, i32 %135, i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %138 = trunc i64 %16 to i32
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 @md(i8* %17, i32 %138, i8* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %141 = call i32 @rump_sys_rename(i8* %14, i8* %17)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %134
  %146 = call i32 @checkfile(i8* %17, %struct.stat* %9)
  %147 = trunc i64 %12 to i32
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @md(i8* %14, i32 %147, i8* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %150 = call i32 @rump_sys_rename(i8* %17, i8* %14)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %145
  %155 = trunc i64 %12 to i32
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @md(i8* %14, i32 %155, i8* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %158 = call i32 @checkfile(i8* %14, %struct.stat* %9)
  %159 = trunc i64 %19 to i32
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @md(i8* %20, i32 %159, i8* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %162 = call i32 @rump_sys_rename(i8* %14, i8* %20)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %154
  %167 = call i32 @checkfile(i8* %20, %struct.stat* %9)
  %168 = trunc i64 %12 to i32
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 @md(i8* %14, i32 %168, i8* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %171 = trunc i64 %16 to i32
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @md(i8* %17, i32 %171, i8* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %174 = trunc i64 %19 to i32
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 @md(i8* %20, i32 %174, i8* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  %177 = call i32 @rump_sys_mkdir(i8* %14, i32 511)
  %178 = call i32 @RL(i32 %177)
  %179 = call i32 @rump_sys_mkdir(i8* %17, i32 511)
  %180 = call i32 @RL(i32 %179)
  %181 = call i32 @rump_sys_mkdir(i8* %20, i32 511)
  %182 = call i32 @RL(i32 %181)
  %183 = call i32 @rump_sys_rename(i8* %17, i8* %20)
  %184 = call i32 @RL(i32 %183)
  %185 = call i32 @rump_sys_stat(i8* %14, %struct.stat* %10)
  %186 = call i32 @RL(i32 %185)
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @FSTYPE_MSDOS(i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %166
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ATF_CHECK_EQ(i32 %192, i32 3)
  br label %194

194:                                              ; preds = %190, %166
  %195 = call i32 @rump_sys_rmdir(i8* %20)
  %196 = call i32 @RL(i32 %195)
  %197 = call i32 @rump_sys_rmdir(i8* %14)
  %198 = call i32 @RL(i32 %197)
  %199 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %199)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #2

declare dso_local i32 @atf_tc_skip(i8*) #2

declare dso_local i32 @md(i8*, i32, i8*, i8*) #2

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #2

declare dso_local i32 @atf_tc_fail_errno(i8*) #2

declare dso_local i32 @rump_sys_mknod(i8*, i32, i32) #2

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #2

declare dso_local i32 @rump_sys_rename(i8*, i8*) #2

declare dso_local i32 @checkfile(i8*, %struct.stat*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @FSTYPE_MSDOS(i32*) #2

declare dso_local i32 @ATF_CHECK_EQ(i32, i32) #2

declare dso_local i32 @rump_sys_rmdir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
