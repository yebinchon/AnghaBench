; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_nfsreply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_nfsreply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sunrpc_msg = type { i32 }

@nfserr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@NFS_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsreply_print(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sunrpc_msg*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca [20 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i64 0, i64* @nfserr, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.sunrpc_msg*
  store %struct.sunrpc_msg* %13, %struct.sunrpc_msg** %9, align 8
  %14 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %15 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %24 = call i32 @strlcpy(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 20)
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %26 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %27 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %26, i32 0, i32 0
  %28 = call i32 @EXTRACT_32BITS(i32* %27)
  %29 = call i32 @snprintf(i8* %25, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %39

30:                                               ; preds = %4
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %32 = load i32, i32* @NFS_PORT, align 4
  %33 = call i32 @snprintf(i8* %31, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %35 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %36 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %35, i32 0, i32 0
  %37 = call i32 @EXTRACT_32BITS(i32* %36)
  %38 = call i32 @snprintf(i8* %34, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %30, %22
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %44 = call i32 @print_nfsaddr(%struct.TYPE_6__* %40, i32* %41, i8* %42, i8* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @nfsreply_print_noaddr(%struct.TYPE_6__* %45, i32* %46, i32 %47, i32* %48)
  br label %59

50:                                               ; No predecessors!
  %51 = load i64, i64* @nfserr, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i32, i32* @tstr, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_6__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_6__* %57)
  br label %59

59:                                               ; preds = %39, %53, %50
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @print_nfsaddr(%struct.TYPE_6__*, i32*, i8*, i8*) #1

declare dso_local i32 @nfsreply_print_noaddr(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
