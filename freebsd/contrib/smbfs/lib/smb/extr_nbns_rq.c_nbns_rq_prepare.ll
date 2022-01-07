; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbns_rq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.mbdata, %struct.nb_ctx* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mbdata = type { i32 }
%struct.nb_ctx = type { i32 }

@NBDG_MAXSIZE = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i64 0, align 8
@NBNS_NMFLAG_BCAST = common dso_local global i32 0, align 4
@nb_iflist = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbns_rq_prepare(%struct.nbns_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbns_rq*, align 8
  %4 = alloca %struct.nb_ctx*, align 8
  %5 = alloca %struct.mbdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nbns_rq* %0, %struct.nbns_rq** %3, align 8
  %10 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %11 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %10, i32 0, i32 13
  %12 = load %struct.nb_ctx*, %struct.nb_ctx** %11, align 8
  store %struct.nb_ctx* %12, %struct.nb_ctx** %4, align 8
  %13 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %14 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %13, i32 0, i32 12
  store %struct.mbdata* %14, %struct.mbdata** %5, align 8
  %15 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %16 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %15, i32 0, i32 11
  %17 = load i32, i32* @NBDG_MAXSIZE, align 4
  %18 = call i32 @mb_init(i32* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %156

23:                                               ; preds = %1
  %24 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %25 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INADDR_BROADCAST, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load i32, i32* @NBNS_NMFLAG_BCAST, align 4
  %33 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %34 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32*, i32** @nb_iflist, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = call i32 @nb_enum_if(i32** @nb_iflist, i32 100)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %156

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %31
  br label %54

47:                                               ; preds = %23
  %48 = load i32, i32* @NBNS_NMFLAG_BCAST, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %51 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %46
  %55 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %56 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %57 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mb_put_uint16be(%struct.mbdata* %55, i32 %58)
  %60 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %61 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 31
  %64 = shl i32 %63, 3
  %65 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %66 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 112
  %69 = ashr i32 %68, 4
  %70 = or i32 %64, %69
  store i32 %70, i32* %6, align 4
  %71 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mb_put_uint8(%struct.mbdata* %71, i32 %72)
  %74 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %75 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %76 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 15
  %79 = shl i32 %78, 4
  %80 = call i32 @mb_put_uint8(%struct.mbdata* %74, i32 %79)
  %81 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %82 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %83 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mb_put_uint16be(%struct.mbdata* %81, i32 %84)
  %86 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %87 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %88 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mb_put_uint16be(%struct.mbdata* %86, i32 %89)
  %91 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %92 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %93 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mb_put_uint16be(%struct.mbdata* %91, i32 %94)
  %96 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %97 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %98 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mb_put_uint16be(%struct.mbdata* %96, i32 %99)
  %101 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %102 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %54
  %106 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %107 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %2, align 4
  br label %156

112:                                              ; preds = %105
  %113 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %114 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @nb_name_len(i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = bitcast i32** %7 to i8**
  %120 = call i32 @mb_fit(%struct.mbdata* %117, i32 %118, i8** %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %156

125:                                              ; preds = %112
  %126 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %127 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @nb_name_encode(i32 %128, i32* %129)
  %131 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %132 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %133 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @mb_put_uint16be(%struct.mbdata* %131, i32 %134)
  %136 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %137 = load %struct.nbns_rq*, %struct.nbns_rq** %3, align 8
  %138 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @mb_put_uint16be(%struct.mbdata* %136, i32 %139)
  br label %141

141:                                              ; preds = %125, %54
  %142 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %143 = getelementptr inbounds %struct.mbdata, %struct.mbdata* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mbdata*, %struct.mbdata** %5, align 8
  %146 = getelementptr inbounds %struct.mbdata, %struct.mbdata* %145, i32 0, i32 0
  %147 = call i32 @m_lineup(i32 %144, i32* %146)
  %148 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %149 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  %153 = load %struct.nb_ctx*, %struct.nb_ctx** %4, align 8
  %154 = getelementptr inbounds %struct.nb_ctx, %struct.nb_ctx* %153, i32 0, i32 0
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %141
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %123, %110, %43, %21
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @mb_init(i32*, i32) #1

declare dso_local i32 @nb_enum_if(i32**, i32) #1

declare dso_local i32 @mb_put_uint16be(%struct.mbdata*, i32) #1

declare dso_local i32 @mb_put_uint8(%struct.mbdata*, i32) #1

declare dso_local i32 @nb_name_len(i32) #1

declare dso_local i32 @mb_fit(%struct.mbdata*, i32, i8**) #1

declare dso_local i32 @nb_name_encode(i32, i32*) #1

declare dso_local i32 @m_lineup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
