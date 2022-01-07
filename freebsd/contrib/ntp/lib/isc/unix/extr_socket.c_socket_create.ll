; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_socket_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i64, %struct.TYPE_17__*, %struct.TYPE_15__, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i64, i32, i32, i32*, i32*, %struct.TYPE_19__**, i32 }

@isc_sockettype_fdwatch = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@upd4statsindex = common dso_local global i32* null, align 8
@upd6statsindex = common dso_local global i32* null, align 8
@tcp4statsindex = common dso_local global i32* null, align 8
@tcp6statsindex = common dso_local global i32* null, align 8
@unixstatsindex = common dso_local global i32* null, align 8
@STATID_OPENFAIL = common dso_local global i64 0, align 8
@socketmethods = common dso_local global i32 0, align 4
@MANAGED = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@CREATION = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_CREATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dupped\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32**, i32*)* @socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @socket_create(i32* %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %12, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %13, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %19 = call i32 @VALID_MANAGER(%struct.TYPE_18__* %18)
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i32**, i32*** %10, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32**, i32*** %10, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ false, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @REQUIRE(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @isc_sockettype_fdwatch, align 4
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @REQUIRE(i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @allocate_socket(%struct.TYPE_18__* %36, i32 %37, %struct.TYPE_19__** %12)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @ISC_R_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i64, i64* %14, align 8
  store i64 %43, i64* %6, align 8
  br label %169

44:                                               ; preds = %27
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %76 [
    i32 129, label %48
    i32 130, label %60
    i32 128, label %72
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @AF_INET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32*, i32** @upd4statsindex, align 8
  br label %56

54:                                               ; preds = %48
  %55 = load i32*, i32** @upd6statsindex, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32* [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 6
  store i32* %57, i32** %59, align 8
  br label %78

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @AF_INET, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32*, i32** @tcp4statsindex, align 8
  br label %68

66:                                               ; preds = %60
  %67 = load i32*, i32** @tcp6statsindex, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32* [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 6
  store i32* %69, i32** %71, align 8
  br label %78

72:                                               ; preds = %44
  %73 = load i32*, i32** @unixstatsindex, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  br label %78

76:                                               ; preds = %44
  %77 = call i32 @INSIST(i32 0)
  br label %78

78:                                               ; preds = %76, %72, %68, %56
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = bitcast i32* %84 to %struct.TYPE_19__*
  %86 = call i64 @opensocket(%struct.TYPE_18__* %82, %struct.TYPE_19__* %83, %struct.TYPE_19__* %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @ISC_R_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %78
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @STATID_OPENFAIL, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @inc_stats(i32 %93, i32 %99)
  %101 = call i32 @free_socket(%struct.TYPE_19__** %12)
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %6, align 8
  br label %169

103:                                              ; preds = %78
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32* @socketmethods, i32** %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %110 = bitcast %struct.TYPE_19__* %109 to i32*
  %111 = load i32**, i32*** %10, align 8
  store i32* %110, i32** %111, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @FDLOCK_ID(i64 %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @LOCK(i32* %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %126, i64 %129
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %130, align 8
  %131 = load i32, i32* @MANAGED, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %131, i32* %138, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @UNLOCK(i32* %144)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = call i32 @LOCK(i32* %147)
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %153 = load i32, i32* @link, align 4
  %154 = call i32 @ISC_LIST_APPEND(i32 %151, %struct.TYPE_19__* %152, i32 %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = call i32 @UNLOCK(i32* %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %159 = load i32, i32* @CREATION, align 4
  %160 = load i32, i32* @isc_msgcat, align 4
  %161 = load i32, i32* @ISC_MSGSET_SOCKET, align 4
  %162 = load i32, i32* @ISC_MSG_CREATED, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = icmp eq i32* %163, null
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %167 = call i32 @socket_log(%struct.TYPE_19__* %158, i32* null, i32 %159, i32 %160, i32 %161, i32 %162, i8* %166)
  %168 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %168, i64* %6, align 8
  br label %169

169:                                              ; preds = %103, %90, %42
  %170 = load i64, i64* %6, align 8
  ret i64 %170
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_MANAGER(%struct.TYPE_18__*) #1

declare dso_local i64 @allocate_socket(%struct.TYPE_18__*, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @opensocket(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @inc_stats(i32, i32) #1

declare dso_local i32 @free_socket(%struct.TYPE_19__**) #1

declare dso_local i32 @FDLOCK_ID(i64) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @socket_log(%struct.TYPE_19__*, i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
