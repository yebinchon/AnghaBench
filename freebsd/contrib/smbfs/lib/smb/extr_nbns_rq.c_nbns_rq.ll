; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.nbns_rq = type { i32, i64, i32, i32, i64, i64, i64, %struct.mbdata, i32, %struct.TYPE_2__*, %struct.mbdata }
%struct.mbdata = type { i32 }

@nb_iflist = common dso_local global %struct.TYPE_2__* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@NBNS_NMFLAG_BCAST = common dso_local global i32 0, align 4
@NBERR_INVALIDRESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbns_rq(%struct.nbns_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbns_rq*, align 8
  %4 = alloca %struct.mbdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nbns_rq* %0, %struct.nbns_rq** %3, align 8
  %9 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %10 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %9, i32 0, i32 10
  store %struct.mbdata* %10, %struct.mbdata** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nb_iflist, align 8
  %12 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %13 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %12, i32 0, i32 9
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  br label %14

14:                                               ; preds = %60, %1
  %15 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %16 = call i32 @nbns_rq_opensocket(%struct.nbns_rq* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %144

21:                                               ; preds = %14
  store i32 3, i32* %8, align 4
  br label %22

22:                                               ; preds = %74, %21
  %23 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %24 = call i32 @nbns_rq_send(%struct.nbns_rq* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %144

29:                                               ; preds = %22
  %30 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %31 = call i32 @nbns_rq_recv(%struct.nbns_rq* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %38, %34
  %42 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %43 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NBNS_NMFLAG_BCAST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %50 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %49, i32 0, i32 9
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %55 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %54, i32 0, i32 9
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %62 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %61, i32 0, i32 9
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %67 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %66, i32 0, i32 9
  store %struct.TYPE_2__* %65, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %69 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @close(i32 %70)
  br label %14

72:                                               ; preds = %53, %48, %41
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %144

74:                                               ; preds = %38
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %22

77:                                               ; preds = %29
  %78 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %79 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %78, i32 0, i32 7
  store %struct.mbdata* %79, %struct.mbdata** %4, align 8
  %80 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %81 = getelementptr inbounds %struct.mbdata, %struct.mbdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 12
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @NBERR_INVALIDRESPONSE, align 4
  %86 = call i32 @NBERROR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %144

87:                                               ; preds = %77
  %88 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %89 = call i32 @mb_get_uint16be(%struct.mbdata* %88, i64* %5)
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %92 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @NBERR_INVALIDRESPONSE, align 4
  %97 = call i32 @NBERROR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %144

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %101 = call i32 @mb_get_uint8(%struct.mbdata* %100, i32* %6)
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 7
  %104 = shl i32 %103, 4
  %105 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %106 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %108 = call i32 @mb_get_uint8(%struct.mbdata* %107, i32* %6)
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 240
  %111 = ashr i32 %110, 4
  %112 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %113 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, 15
  %118 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %119 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %121 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %99
  %125 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %126 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @NBERROR(i32 %127)
  store i32 %128, i32* %2, align 4
  br label %144

129:                                              ; preds = %99
  %130 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %131 = call i32 @mb_get_uint16be(%struct.mbdata* %130, i64* %5)
  %132 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %133 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %134 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %133, i32 0, i32 4
  %135 = call i32 @mb_get_uint16be(%struct.mbdata* %132, i64* %134)
  %136 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %137 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %138 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %137, i32 0, i32 5
  %139 = call i32 @mb_get_uint16be(%struct.mbdata* %136, i64* %138)
  %140 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %141 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %142 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %141, i32 0, i32 6
  %143 = call i32 @mb_get_uint16be(%struct.mbdata* %140, i64* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %129, %124, %95, %84, %72, %27, %19
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @nbns_rq_opensocket(%struct.nbns_rq*) #1

declare dso_local i32 @nbns_rq_send(%struct.nbns_rq*) #1

declare dso_local i32 @nbns_rq_recv(%struct.nbns_rq*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @NBERROR(i32) #1

declare dso_local i32 @mb_get_uint16be(%struct.mbdata*, i64*) #1

declare dso_local i32 @mb_get_uint8(%struct.mbdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
