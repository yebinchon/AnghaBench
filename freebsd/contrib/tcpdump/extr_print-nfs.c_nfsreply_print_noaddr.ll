; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_nfsreply_print_noaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_nfsreply_print_noaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunrpc_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@nfserr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"reply ok %u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"reply ERR %u: \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RPC Version mismatch (%u-%u)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Auth %s\00", align 1
@sunrpc_auth_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid failure code %u\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Unknown reason for rejecting rpc message %u\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"reply Unknown rpc response code=%u %u\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsreply_print_noaddr(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sunrpc_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i64 0, i64* @nfserr, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.sunrpc_msg*
  store %struct.sunrpc_msg* %18, %struct.sunrpc_msg** %9, align 8
  %19 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %20 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK(i32 %22)
  %24 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %25 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @EXTRACT_32BITS(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %117 [
    i32 130, label %29
    i32 129, label %47
  ]

29:                                               ; preds = %4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  %35 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @xid_map_find(%struct.sunrpc_msg* %35, i32* %36, i32* %10, i32* %11)
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @interp_reply(i32* %40, %struct.sunrpc_msg* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %29
  br label %124

47:                                               ; preds = %4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  %53 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %54 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ND_TCHECK(i32 %57)
  %59 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %60 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = call i32 @EXTRACT_32BITS(i32* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  switch i32 %64, label %110 [
    i32 128, label %65
    i32 131, label %91
  ]

65:                                               ; preds = %47
  %66 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %67 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ND_TCHECK(i32 %71)
  %73 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %74 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @EXTRACT_32BITS(i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %80 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @EXTRACT_32BITS(i32* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @ND_PRINT(i32* %89)
  br label %116

91:                                               ; preds = %47
  %92 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %93 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ND_TCHECK(i32 %96)
  %98 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %99 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = call i32 @EXTRACT_32BITS(i32* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @sunrpc_auth_str, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @tok2str(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i32*
  %109 = call i32 @ND_PRINT(i32* %108)
  br label %116

110:                                              ; preds = %47
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  %115 = call i32 @ND_PRINT(i32* %114)
  br label %116

116:                                              ; preds = %110, %91, %65
  br label %124

117:                                              ; preds = %4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i32*
  %123 = call i32 @ND_PRINT(i32* %122)
  br label %124

124:                                              ; preds = %117, %116, %46
  br label %134

125:                                              ; No predecessors!
  %126 = load i64, i64* @nfserr, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* @tstr, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @ND_PRINT(i32* %132)
  br label %134

134:                                              ; preds = %124, %128, %125
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @xid_map_find(%struct.sunrpc_msg*, i32*, i32*, i32*) #1

declare dso_local i32 @interp_reply(i32*, %struct.sunrpc_msg*, i32, i32, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
