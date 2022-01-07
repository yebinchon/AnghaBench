; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend.c_ctl_port_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend.c_ctl_port_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32, %struct.ctl_port**, i32, i32, i32, i32, i32 }
%struct.ctl_port = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32*, i8*, i32*, i64, i32, %struct.ctl_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@control_softc = common dso_local global %struct.ctl_softc* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"CTL is not initialized\00", align 1
@CTL_MAX_INIT_PER_PORT = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CTL port\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@fe_links = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_port_register(%struct.ctl_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_port*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.ctl_port*, align 8
  %6 = alloca %struct.ctl_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctl_port* %0, %struct.ctl_port** %3, align 8
  %10 = load %struct.ctl_softc*, %struct.ctl_softc** @control_softc, align 8
  store %struct.ctl_softc* %10, %struct.ctl_softc** %4, align 8
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %12 = icmp ne %struct.ctl_softc* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %16 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %16, i32 0, i32 10
  store %struct.ctl_softc* %15, %struct.ctl_softc** %17, align 8
  %18 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ctl_ffz(i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %29, %25
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ctl_set_mask(i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %40
  %51 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  store i32 1, i32* %2, align 4
  br label %201

54:                                               ; preds = %43
  %55 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %59, i32 0, i32 0
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load i32, i32* @CTL_MAX_INIT_PER_PORT, align 4
  %63 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %64 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %66 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @M_CTL, align 4
  %72 = load i32, i32* @M_NOWAIT, align 4
  %73 = load i32, i32* @M_ZERO, align 4
  %74 = or i32 %72, %73
  %75 = call i32* @malloc(i32 %70, i32 %71, i32 %74)
  %76 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %77 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %76, i32 0, i32 7
  store i32* %75, i32** %77, align 8
  %78 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %79 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %54
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %9, align 4
  br label %102

84:                                               ; preds = %54
  %85 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %86 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %87 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %90 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 20
  %93 = call i32 @ctl_pool_create(%struct.ctl_softc* %85, i32 %88, i64 %92, i8** %7)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %84
  %97 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %98 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @M_CTL, align 4
  %101 = call i32 @free(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %82
  %103 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %104 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 8
  %105 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %106 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %105, i32 0, i32 0
  %107 = call i32 @mtx_lock(i32* %106)
  %108 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %109 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @ctl_clear_mask(i32 %110, i32 %111)
  %113 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %113, i32 0, i32 0
  %115 = call i32 @mtx_unlock(i32* %114)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %201

117:                                              ; preds = %84
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %120 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %123 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %125 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = call i32* @nvlist_create(i32 0)
  %130 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %131 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %130, i32 0, i32 5
  store i32* %129, i32** %131, align 8
  br label %132

132:                                              ; preds = %128, %117
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %135 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %138 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %137, i32 0, i32 3
  %139 = load i32, i32* @MTX_DEF, align 4
  %140 = call i32 @mtx_init(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %139)
  %141 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %142 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %141, i32 0, i32 0
  %143 = call i32 @mtx_lock(i32* %142)
  %144 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %145 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %149 = load i32, i32* @fe_links, align 4
  %150 = call i32 @STAILQ_INSERT_TAIL(i32* %147, %struct.ctl_port* %148, i32 %149)
  store %struct.ctl_port* null, %struct.ctl_port** %5, align 8
  %151 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %152 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %151, i32 0, i32 2
  %153 = call %struct.ctl_port* @STAILQ_FIRST(i32* %152)
  store %struct.ctl_port* %153, %struct.ctl_port** %6, align 8
  br label %154

154:                                              ; preds = %166, %132
  %155 = load %struct.ctl_port*, %struct.ctl_port** %6, align 8
  %156 = icmp ne %struct.ctl_port* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load %struct.ctl_port*, %struct.ctl_port** %6, align 8
  %159 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %160, %161
  br label %163

163:                                              ; preds = %157, %154
  %164 = phi i1 [ false, %154 ], [ %162, %157 ]
  br i1 %164, label %165, label %171

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.ctl_port*, %struct.ctl_port** %6, align 8
  store %struct.ctl_port* %167, %struct.ctl_port** %5, align 8
  %168 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %169 = load i32, i32* @links, align 4
  %170 = call %struct.ctl_port* @STAILQ_NEXT(%struct.ctl_port* %168, i32 %169)
  store %struct.ctl_port* %170, %struct.ctl_port** %6, align 8
  br label %154

171:                                              ; preds = %163
  %172 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %173 = icmp ne %struct.ctl_port* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %176 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %175, i32 0, i32 2
  %177 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %178 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %179 = load i32, i32* @links, align 4
  %180 = call i32 @STAILQ_INSERT_AFTER(i32* %176, %struct.ctl_port* %177, %struct.ctl_port* %178, i32 %179)
  br label %187

181:                                              ; preds = %171
  %182 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %183 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %182, i32 0, i32 2
  %184 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %185 = load i32, i32* @links, align 4
  %186 = call i32 @STAILQ_INSERT_HEAD(i32* %183, %struct.ctl_port* %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %189 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %190 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %189, i32 0, i32 1
  %191 = load %struct.ctl_port**, %struct.ctl_port*** %190, align 8
  %192 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %193 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ctl_port*, %struct.ctl_port** %191, i64 %195
  store %struct.ctl_port* %188, %struct.ctl_port** %196, align 8
  %197 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %198 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %197, i32 0, i32 0
  %199 = call i32 @mtx_unlock(i32* %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %187, %102, %50
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_ffz(i32, i32, i32) #1

declare dso_local i64 @ctl_set_mask(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_pool_create(%struct.ctl_softc*, i32, i64, i8**) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ctl_clear_mask(i32, i32) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ctl_port*, i32) #1

declare dso_local %struct.ctl_port* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.ctl_port* @STAILQ_NEXT(%struct.ctl_port*, i32) #1

declare dso_local i32 @STAILQ_INSERT_AFTER(i32*, %struct.ctl_port*, %struct.ctl_port*, i32) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.ctl_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
