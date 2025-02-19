; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsepathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsepathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.nfsv3_pathconf = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" POST:\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c" linkmax %u namemax %u %s %s %s %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"notrunc\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"chownres\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"igncase\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"keepcase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @parsepathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsepathconf(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsv3_pathconf*, align 8
  %8 = alloca %struct.nfsv3_pathconf, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @parsestatus(%struct.TYPE_6__* %9, i32* %10, i32* %6)
  store i32* %11, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str to %struct.TYPE_6__*))
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32* @parse_post_op_attr(%struct.TYPE_6__* %23, i32* %24, i64 %27)
  store i32* %28, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %76

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %76

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = bitcast i32* %36 to %struct.nfsv3_pathconf*
  store %struct.nfsv3_pathconf* %37, %struct.nfsv3_pathconf** %7, align 8
  %38 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %39 = bitcast %struct.nfsv3_pathconf* %8 to i8*
  %40 = bitcast %struct.nfsv3_pathconf* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 24, i1 false)
  %41 = call i32 @ND_TCHECK(%struct.nfsv3_pathconf* byval(%struct.nfsv3_pathconf) align 8 %8)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %44 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %43, i32 0, i32 5
  %45 = call i64 @EXTRACT_32BITS(i32* %44)
  %46 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %47 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %46, i32 0, i32 4
  %48 = call i64 @EXTRACT_32BITS(i32* %47)
  %49 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %50 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %49, i32 0, i32 3
  %51 = call i64 @EXTRACT_32BITS(i32* %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %55 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %56 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %55, i32 0, i32 2
  %57 = call i64 @EXTRACT_32BITS(i32* %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %61 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %62 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %61, i32 0, i32 1
  %63 = call i64 @EXTRACT_32BITS(i32* %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %67 = load %struct.nfsv3_pathconf*, %struct.nfsv3_pathconf** %7, align 8
  %68 = getelementptr inbounds %struct.nfsv3_pathconf, %struct.nfsv3_pathconf* %67, i32 0, i32 0
  %69 = call i64 @EXTRACT_32BITS(i32* %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %73 = bitcast i8* %72 to %struct.TYPE_6__*
  %74 = call i32 @ND_PRINT(%struct.TYPE_6__* %73)
  store i32 1, i32* %3, align 4
  br label %76

75:                                               ; No predecessors!
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %35, %34, %30, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32* @parsestatus(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32* @parse_post_op_attr(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @ND_TCHECK(%struct.nfsv3_pathconf* byval(%struct.nfsv3_pathconf) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
