; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_writeshovel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_writeshovel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffstestargs = type { i32, i32 }
%struct.putter_hdr = type { i32 }
%struct.puffs_req = type { i64, i64, i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"writeshovel read %zd / %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PUFFSOP_VFS = common dso_local global i64 0, align 8
@PUFFS_VFS_UNMOUNT = common dso_local global i64 0, align 8
@mayquit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"writeshovel wr %zd / %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @writeshovel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @writeshovel(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.puffstestargs*, align 8
  %4 = alloca %struct.putter_hdr*, align 8
  %5 = alloca %struct.puffs_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.puffstestargs*
  store %struct.puffstestargs* %14, %struct.puffstestargs** %3, align 8
  %15 = load i32, i32* @BUFSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = call i32 @rump_pub_lwproc_newlwp(i32 1)
  %20 = load %struct.puffstestargs*, %struct.puffstestargs** %3, align 8
  %21 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.puffstestargs*, %struct.puffstestargs** %3, align 8
  %24 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = bitcast i8* %18 to %struct.putter_hdr*
  store %struct.putter_hdr* %26, %struct.putter_hdr** %4, align 8
  %27 = bitcast i8* %18 to %struct.puffs_req*
  store %struct.puffs_req* %27, %struct.puffs_req** %5, align 8
  br label %28

28:                                               ; preds = %114, %1
  store i32 0, i32* %12, align 4
  store i64 4, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @BUFSIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %68, %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %18, i64 %38
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @xread(i32 %36, i8* %39, i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %116

49:                                               ; preds = %35
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %54, 4
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.putter_hdr*, %struct.putter_hdr** %4, align 8
  %58 = getelementptr inbounds %struct.putter_hdr, %struct.putter_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %8, align 8
  br label %67

63:                                               ; preds = %49
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 4
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %35, label %71

71:                                               ; preds = %68
  %72 = load %struct.puffs_req*, %struct.puffs_req** %5, align 8
  %73 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @PUFFSOP_OPCLASS(i32 %74)
  %76 = load i64, i64* @PUFFSOP_VFS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.puffs_req*, %struct.puffs_req** %5, align 8
  %80 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PUFFS_VFS_UNMOUNT, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %78, %71
  %85 = phi i1 [ false, %71 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 @__predict_false(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.puffs_req*, %struct.puffs_req** %5, align 8
  %91 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* @mayquit, align 4
  br label %95

95:                                               ; preds = %94, %89
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.putter_hdr*, %struct.putter_hdr** %4, align 8
  %99 = getelementptr inbounds %struct.putter_hdr, %struct.putter_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rump_sys_write(i32 %97, i8* %18, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.putter_hdr*, %struct.putter_hdr** %4, align 8
  %105 = getelementptr inbounds %struct.putter_hdr, %struct.putter_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %103, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %96
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @errno, align 4
  %113 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112)
  br label %115

114:                                              ; preds = %96
  br label %28

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %44
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 (...) @abort() #4
  unreachable

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rump_pub_lwproc_newlwp(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @xread(i32, i8*, i64) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

declare dso_local i64 @__predict_false(i32) #2

declare dso_local i64 @PUFFSOP_OPCLASS(i32) #2

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #2

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
