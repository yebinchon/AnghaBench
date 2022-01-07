; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_readshovel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_readshovel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.putter_hdr = type { i32 }
%struct.puffs_req = type { i64, i32 }
%struct.puffstestargs = type { i32, i32, i32*, i32* }

@BUFSIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"readshovel r1 %zd / %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"readshovel r2 %zd / %d\0A\00", align 1
@PUFFSOP_VFS = common dso_local global i64 0, align 8
@PUFFS_VFS_MAX = common dso_local global i64 0, align 8
@PUFFSOP_VN = common dso_local global i64 0, align 8
@PUFFS_VN_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"readshovel write %zd / %d\0A\00", align 1
@mayquit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @readshovel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readshovel(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.putter_hdr*, align 8
  %4 = alloca %struct.puffs_req*, align 8
  %5 = alloca %struct.puffstestargs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.puffstestargs*
  store %struct.puffstestargs* %12, %struct.puffstestargs** %5, align 8
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.puffstestargs*, %struct.puffstestargs** %5, align 8
  %18 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.puffstestargs*, %struct.puffstestargs** %5, align 8
  %21 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = bitcast i8* %16 to %struct.putter_hdr*
  store %struct.putter_hdr* %23, %struct.putter_hdr** %3, align 8
  %24 = bitcast i8* %16 to %struct.puffs_req*
  store %struct.puffs_req* %24, %struct.puffs_req** %4, align 8
  %25 = call i32 @rump_pub_lwproc_newlwp(i32 1)
  br label %26

26:                                               ; preds = %123, %1
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @rump_sys_read(i32 %27, i8* %16, i32 4)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %124

36:                                               ; preds = %26
  %37 = load %struct.putter_hdr*, %struct.putter_hdr** %3, align 8
  %38 = getelementptr inbounds %struct.putter_hdr, %struct.putter_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BUFSIZE, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds i8, i8* %16, i64 4
  %46 = load %struct.putter_hdr*, %struct.putter_hdr** %3, align 8
  %47 = getelementptr inbounds %struct.putter_hdr, %struct.putter_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @rump_sys_read(i32 %44, i8* %45, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %36
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %124

60:                                               ; preds = %36
  %61 = load %struct.puffs_req*, %struct.puffs_req** %4, align 8
  %62 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @PUFFSOP_OPCLASS(i32 %63)
  %65 = load i64, i64* @PUFFSOP_VFS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load %struct.puffs_req*, %struct.puffs_req** %4, align 8
  %69 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PUFFS_VFS_MAX, align 8
  %72 = icmp ult i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.puffstestargs*, %struct.puffstestargs** %5, align 8
  %76 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.puffs_req*, %struct.puffs_req** %4, align 8
  %79 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %109

84:                                               ; preds = %60
  %85 = load %struct.puffs_req*, %struct.puffs_req** %4, align 8
  %86 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @PUFFSOP_OPCLASS(i32 %87)
  %89 = load i64, i64* @PUFFSOP_VN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load %struct.puffs_req*, %struct.puffs_req** %4, align 8
  %93 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PUFFS_VN_MAX, align 8
  %96 = icmp ult i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.puffstestargs*, %struct.puffstestargs** %5, align 8
  %100 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.puffs_req*, %struct.puffs_req** %4, align 8
  %103 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %91, %84
  br label %109

109:                                              ; preds = %108, %67
  %110 = load %struct.putter_hdr*, %struct.putter_hdr** %3, align 8
  %111 = getelementptr inbounds %struct.putter_hdr, %struct.putter_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @xwrite(i32 %113, i8* %16, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  br label %124

123:                                              ; preds = %109
  br label %26

124:                                              ; preds = %118, %55, %31
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* @mayquit, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (...) @abort() #4
  unreachable

132:                                              ; preds = %127, %124
  %133 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rump_pub_lwproc_newlwp(i32) #2

declare dso_local i32 @rump_sys_read(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @PUFFSOP_OPCLASS(i32) #2

declare dso_local i32 @xwrite(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
