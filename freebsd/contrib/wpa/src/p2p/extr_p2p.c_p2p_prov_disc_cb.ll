; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prov_disc_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_prov_disc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i8*, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32)*, i32 (i32)* }

@.str = private unnamed_addr constant [52 x i8] c"Provision Discovery Request TX callback: success=%d\00", align 1
@P2P_NO_PENDING_ACTION = common dso_local global i8* null, align 8
@P2P_SEARCH = common dso_local global i64 0, align 8
@P2P_LISTEN_ONLY = common dso_local global i64 0, align 8
@P2P_PENDING_PD = common dso_local global i8* null, align 8
@P2P_IDLE = common dso_local global i64 0, align 8
@P2P_SC_SUCCESS_DEFERRED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"P2PS PD completion on Follow-on PD Request ACK\00", align 1
@P2P_PD_DURING_FIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32)* @p2p_prov_disc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_prov_disc_cb(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** @P2P_NO_PENDING_ACTION, align 8
  %12 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %13 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %10
  %19 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @P2P_SEARCH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @P2P_LISTEN_ONLY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %18
  %31 = load i8*, i8** @P2P_PENDING_PD, align 8
  %32 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %33 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %35 = call i32 @p2p_set_timeout(%struct.p2p_data* %34, i32 0, i32 50000)
  br label %58

36:                                               ; preds = %24, %10
  %37 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %38 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @P2P_IDLE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %44 = call i32 @p2p_continue_find(%struct.p2p_data* %43)
  br label %57

45:                                               ; preds = %36
  %46 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** @P2P_PENDING_PD, align 8
  %52 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %53 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %55 = call i32 @p2p_set_timeout(%struct.p2p_data* %54, i32 0, i32 300000)
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %30
  br label %189

59:                                               ; preds = %2
  %60 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %163

64:                                               ; preds = %59
  %65 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %163, label %71

71:                                               ; preds = %64
  %72 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %73 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @P2P_SC_SUCCESS_DEFERRED, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %163

79:                                               ; preds = %71
  %80 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %81 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %83 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %88 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %90 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %95 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %93(i32 %98)
  br label %100

100:                                              ; preds = %86, %79
  %101 = load i8*, i8** @P2P_NO_PENDING_ACTION, align 8
  %102 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %103 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %105 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %104, i32 0, i32 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32 (i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32)*, i32 (i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32)** %107, align 8
  %109 = icmp ne i32 (i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32)* %108, null
  br i1 %109, label %110, label %152

110:                                              ; preds = %100
  %111 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %112 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %111, i32 0, i32 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32 (i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32)*, i32 (i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32)** %114, align 8
  %116 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %117 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %116, i32 0, i32 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %122 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %121, i32 0, i32 3
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %127 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %132 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %131, i32 0, i32 3
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %137 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %136, i32 0, i32 3
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %142 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %147 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 %115(i32 %120, i64 %125, i32 %130, i32 %135, i32 %140, i32* null, i32 %145, i32 %150, i32 0, i32 0, i32* null, i32 0, i32 0, i32 0, i32* null, i32* null, i32 0, i32 0, i32* null, i32 0)
  br label %152

152:                                              ; preds = %110, %100
  %153 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %154 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %159 = call i32 @p2p_reset_pending_pd(%struct.p2p_data* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %162 = call i32 @p2ps_prov_free(%struct.p2p_data* %161)
  br label %189

163:                                              ; preds = %71, %64, %59
  %164 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %165 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i8*, i8** @P2P_PENDING_PD, align 8
  %170 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %171 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %176

172:                                              ; preds = %163
  %173 = load i8*, i8** @P2P_NO_PENDING_ACTION, align 8
  %174 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %175 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %178 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @P2P_SEARCH, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %184 = load i32, i32* @P2P_PD_DURING_FIND, align 4
  %185 = call i32 @p2p_set_state(%struct.p2p_data* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %176
  %187 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %188 = call i32 @p2p_set_timeout(%struct.p2p_data* %187, i32 0, i32 200000)
  br label %189

189:                                              ; preds = %186, %160, %58
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local i32 @p2p_continue_find(%struct.p2p_data*) #1

declare dso_local i32 @p2p_reset_pending_pd(%struct.p2p_data*) #1

declare dso_local i32 @p2ps_prov_free(%struct.p2p_data*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
