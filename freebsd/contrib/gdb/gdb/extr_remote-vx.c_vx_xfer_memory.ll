; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c_vx_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_12__ = type { i32, i8* }

@inferior_ptid = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@PTRACE_WRITEDATA = common dso_local global i32 0, align 4
@PTRACE_READDATA = common dso_local global i32 0, align 4
@VX_MEMXFER_MAX = common dso_local global i32 0, align 4
@rpcerr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @vx_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_xfer_memory(i64 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %20 = bitcast %struct.TYPE_10__* %14 to i8*
  %21 = call i32 @memset(i8* %20, i8 signext 0, i32 32)
  %22 = bitcast %struct.TYPE_11__* %15 to i8*
  %23 = call i32 @memset(i8* %22, i8 signext 0, i32 16)
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @PIDGET(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %6
  %35 = load i32, i32* @DATA, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = bitcast %struct.TYPE_12__* %16 to i8*
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @PTRACE_WRITEDATA, align 4
  store i32 %45, i32* %17, align 4
  br label %51

46:                                               ; preds = %6
  %47 = bitcast %struct.TYPE_12__* %16 to i8*
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @PTRACE_READDATA, align 4
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %46, %34
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %100, %51
  %54 = load i32, i32* %18, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %61, label %101

61:                                               ; preds = %59
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @VX_MEMXFER_MAX, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %19, align 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %19, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @net_ptrace_clnt_call(i32 %74, %struct.TYPE_10__* %14, %struct.TYPE_11__* %15)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = load i32, i32* @rpcerr, align 4
  %79 = call i32 @error(i32 %78)
  br label %80

80:                                               ; preds = %77, %61
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %18, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %18, align 4
  br label %100

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* @errno, align 4
  br label %100

100:                                              ; preds = %97, %85
  br label %53

101:                                              ; preds = %59
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %18, align 4
  %104 = sub nsw i32 %102, %103
  ret i32 %104
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @net_ptrace_clnt_call(i32, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
