; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.stat = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@TESTFILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@st_atimespec = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@st_gid = common dso_local global i32 0, align 4
@st_mode = common dso_local global i32 0, align 4
@st_mtimespec = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@st_uid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca [2 x %struct.timeval], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @FSTEST_ENTER()
  %10 = load i32, i32* @TESTFILE, align 4
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rump_sys_open(i32 %10, i32 %13, i32 493)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @RL(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @rump_sys_close(i32 %16)
  %18 = call i32 @RL(i32 %17)
  %19 = load i32, i32* @TESTFILE, align 4
  %20 = call i32 @rump_sys_stat(i32 %19, %struct.stat* %5)
  %21 = call i32 @RL(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @FSTYPE_MSDOS(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @FSTYPE_SYSVBFS(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @TESTFILE, align 4
  %31 = call i32 @rump_sys_chown(i32 %30, i32 1, i32 2)
  %32 = call i32 @RL(i32 %31)
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  store i32 2, i32* %34, align 4
  %35 = load i32, i32* @TESTFILE, align 4
  %36 = call i32 @rump_sys_chmod(i32 %35, i32 83)
  %37 = call i32 @RL(i32 %36)
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ACCESSPERMS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = or i32 %42, 83
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %25, %2
  %46 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  store i32 1000000000, i32* %47, align 16
  %48 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %50, i32 0, i32 0
  store i32 1000000002, i32* %51, align 8
  %52 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 1
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %52, i32 0, i32 1
  store i32 3, i32* %53, align 4
  %54 = load i32, i32* @TESTFILE, align 4
  %55 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %56 = call i32 @rump_sys_utimes(i32 %54, %struct.timeval* %55)
  %57 = call i32 @RL(i32 %56)
  %58 = load i32, i32* @TESTFILE, align 4
  %59 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %7, i64 0, i64 0
  %60 = call i32 @rump_sys_utimes(i32 %58, %struct.timeval* %59)
  %61 = call i32 @RL(i32 %60)
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 1000000000, i32* %63, align 4
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 1000, i32* %65, align 4
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 1000000002, i32* %67, align 4
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 3000, i32* %69, align 4
  %70 = load i32, i32* @TESTFILE, align 4
  %71 = call i32 @rump_sys_stat(i32 %70, %struct.stat* %6)
  %72 = call i32 @RL(i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i64 @FSTYPE_MSDOS(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %45
  %77 = load i32*, i32** %3, align 8
  %78 = call i64 @FSTYPE_SYSVBFS(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %82, i32 %84)
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %80, %76, %45
  %97 = load i32*, i32** %3, align 8
  %98 = call i64 @FSTYPE_MSDOS(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %100, %96
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %111, i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i64 @FSTYPE_EXT2FS(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %146, label %119

119:                                              ; preds = %108
  %120 = load i32*, i32** %3, align 8
  %121 = call i64 @FSTYPE_MSDOS(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %119
  %124 = load i32*, i32** %3, align 8
  %125 = call i64 @FSTYPE_SYSVBFS(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @FSTYPE_V7FS(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %134, i32 %137)
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i32, ...) bitcast (i32 (...)* @ATF_REQUIRE_EQ to i32 (i32, i32, ...)*)(i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %131, %127, %123, %119, %108
  %147 = call i32 (...) @FSTEST_EXIT()
  ret void
}

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_open(i32, i32, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_stat(i32, %struct.stat*) #1

declare dso_local i64 @FSTYPE_MSDOS(i32*) #1

declare dso_local i64 @FSTYPE_SYSVBFS(i32*) #1

declare dso_local i32 @rump_sys_chown(i32, i32, i32) #1

declare dso_local i32 @rump_sys_chmod(i32, i32) #1

declare dso_local i32 @rump_sys_utimes(i32, %struct.timeval*) #1

declare dso_local i32 @ATF_REQUIRE_EQ(...) #1

declare dso_local i64 @FSTYPE_EXT2FS(i32*) #1

declare dso_local i64 @FSTYPE_V7FS(i32*) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
