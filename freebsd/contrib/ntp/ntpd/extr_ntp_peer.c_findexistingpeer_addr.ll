; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findexistingpeer_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findexistingpeer_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32, i32, %struct.peer*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"findexistingpeer_addr(%s, %s, %d, 0x%x, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@peer_hash = common dso_local global %struct.peer** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"%s %s %d %d 0x%x 0x%x \00", align 1
@MDF_BCLNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.peer* (i32*, %struct.peer*, i32, i32, i32*)* @findexistingpeer_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.peer* @findexistingpeer_addr(i32* %0, %struct.peer* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.peer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.peer*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.peer* %1, %struct.peer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @sptoa(i32* %12)
  %14 = load %struct.peer*, %struct.peer** %7, align 8
  %15 = icmp ne %struct.peer* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load %struct.peer*, %struct.peer** %7, align 8
  %18 = getelementptr inbounds %struct.peer, %struct.peer* %17, i32 0, i32 3
  %19 = call i8* @sptoa(i32* %18)
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %20 ]
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @DPRINTF(i32 2, i8* %26)
  %28 = load %struct.peer*, %struct.peer** %7, align 8
  %29 = icmp eq %struct.peer* null, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.peer**, %struct.peer*** @peer_hash, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @NTP_HASH_ADDR(i32* %32)
  %34 = getelementptr inbounds %struct.peer*, %struct.peer** %31, i64 %33
  %35 = load %struct.peer*, %struct.peer** %34, align 8
  store %struct.peer* %35, %struct.peer** %11, align 8
  br label %40

36:                                               ; preds = %21
  %37 = load %struct.peer*, %struct.peer** %7, align 8
  %38 = getelementptr inbounds %struct.peer, %struct.peer* %37, i32 0, i32 2
  %39 = load %struct.peer*, %struct.peer** %38, align 8
  store %struct.peer* %39, %struct.peer** %11, align 8
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %103, %40
  %42 = load %struct.peer*, %struct.peer** %11, align 8
  %43 = icmp ne %struct.peer* %42, null
  br i1 %43, label %44, label %108

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @sptoa(i32* %45)
  %47 = load %struct.peer*, %struct.peer** %11, align 8
  %48 = getelementptr inbounds %struct.peer, %struct.peer* %47, i32 0, i32 3
  %49 = call i8* @sptoa(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.peer*, %struct.peer** %11, align 8
  %52 = getelementptr inbounds %struct.peer, %struct.peer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.peer*, %struct.peer** %11, align 8
  %56 = getelementptr inbounds %struct.peer, %struct.peer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @DPRINTF(i32 3, i8* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %44
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.peer*, %struct.peer** %11, align 8
  %66 = getelementptr inbounds %struct.peer, %struct.peer* %65, i32 0, i32 3
  %67 = call i64 @SOCK_EQ(i32* %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 -1, %75
  br i1 %76, label %95, label %77

77:                                               ; preds = %74
  %78 = load %struct.peer*, %struct.peer** %11, align 8
  %79 = getelementptr inbounds %struct.peer, %struct.peer* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @MDF_BCLNT, align 4
  %85 = load %struct.peer*, %struct.peer** %11, align 8
  %86 = getelementptr inbounds %struct.peer, %struct.peer* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load i32, i32* @MDF_BCLNT, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90, %77, %74
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.peer*, %struct.peer** %11, align 8
  %98 = getelementptr inbounds %struct.peer, %struct.peer* %97, i32 0, i32 3
  %99 = call i64 @ADDR_PORT_EQ(i32* %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @DPRINTF(i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %108

103:                                              ; preds = %95, %90, %83
  %104 = call i32 @DPRINTF(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.peer*, %struct.peer** %11, align 8
  %106 = getelementptr inbounds %struct.peer, %struct.peer* %105, i32 0, i32 2
  %107 = load %struct.peer*, %struct.peer** %106, align 8
  store %struct.peer* %107, %struct.peer** %11, align 8
  br label %41

108:                                              ; preds = %101, %41
  %109 = load %struct.peer*, %struct.peer** %11, align 8
  ret %struct.peer* %109
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i8* @sptoa(i32*) #1

declare dso_local i64 @NTP_HASH_ADDR(i32*) #1

declare dso_local i64 @SOCK_EQ(i32*, i32*) #1

declare dso_local i64 @ADDR_PORT_EQ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
