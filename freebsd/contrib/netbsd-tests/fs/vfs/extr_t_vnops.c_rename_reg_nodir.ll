; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_reg_nodir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_reg_nodir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"rename not supported by file system\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"chdir mountpoint\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"create file\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"file_link\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rename 1\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stat 1\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"source 1\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"rename 2\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stat 2\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"source 2\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"rename hardlink\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"source 3\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @rename_reg_nodir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_reg_nodir(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @FSTYPE_RUMPFS(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @rump_sys_chdir(i8* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @FSTYPE_MSDOS(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @FSTYPE_SYSVBFS(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 0, i32* %5, align 4
  br label %29

28:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* @S_IFREG, align 4
  %31 = or i32 %30, 511
  %32 = call i32 @rump_sys_mknod(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 -1)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* @S_IFREG, align 4
  %38 = or i32 %37, 511
  %39 = call i32 @rump_sys_mknod(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 -1)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %6)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = call i32 @rump_sys_link(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.stat* %6)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ATF_REQUIRE_EQ(i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ATF_REQUIRE_EQ(i32 %69, i32 2)
  br label %71

71:                                               ; preds = %63, %48
  %72 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %6)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  %77 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %struct.stat* %6)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ATF_REQUIRE_EQ(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %6)
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @ENOENT, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %94
  %102 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %97
  %104 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %6)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ATF_REQUIRE_EQ(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %113
  %122 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %struct.stat* %6)
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @ENOENT, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %121
  %129 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133
  %139 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %6)
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @ENOENT, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %138
  %146 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  %148 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.stat* %6)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  %153 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @ATF_REQUIRE_EQ(i32 %154, i32 %155)
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ATF_REQUIRE_EQ(i32 %158, i32 1)
  br label %160

160:                                              ; preds = %152, %130
  %161 = load i32, i32* @EFAULT, align 4
  %162 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %163 = icmp eq i32 %162, -1
  %164 = zext i1 %163 to i32
  %165 = call i32 @ATF_CHECK_ERRNO(i32 %161, i32 %164)
  %166 = load i32, i32* @EFAULT, align 4
  %167 = call i32 @rump_sys_rename(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %168 = icmp eq i32 %167, -1
  %169 = zext i1 %168 to i32
  %170 = call i32 @ATF_CHECK_ERRNO(i32 %166, i32 %169)
  %171 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i64 @FSTYPE_MSDOS(i32*) #1

declare dso_local i64 @FSTYPE_SYSVBFS(i32*) #1

declare dso_local i32 @rump_sys_mknod(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #1

declare dso_local i32 @rump_sys_link(i8*, i8*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @rump_sys_rename(i8*, i8*) #1

declare dso_local i32 @ATF_CHECK_ERRNO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
