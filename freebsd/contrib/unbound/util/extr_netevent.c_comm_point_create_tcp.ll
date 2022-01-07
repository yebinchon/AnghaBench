; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32, i32, %struct.comm_point**, i32*, %struct.comm_point*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i32, i32*, i64, i32*, i64, i32*, %struct.tcl_list*, i64, i64, i32*, %struct.comm_base* }
%struct.comm_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tcl_list = type { i32 }
%struct.sldns_buffer = type { i32 }
%struct.internal_event = type { i32, i32, i32, %struct.internal_event**, i32*, %struct.internal_event*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i32, i32*, i64, i32*, i64, i32*, %struct.tcl_list*, i64, i64, i32*, %struct.comm_base* }

@comm_tcp_accept = common dso_local global i32 0, align 4
@UB_EV_READ = common dso_local global i16 0, align 2
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@comm_point_tcp_accept_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not baseset tcpacc event\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not add tcpacc event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @comm_point_create_tcp(%struct.comm_base* %0, i32 %1, i32 %2, i32 %3, %struct.tcl_list* %4, i64 %5, %struct.sldns_buffer* %6, i32* %7, i8* %8) #0 {
  %10 = alloca %struct.comm_point*, align 8
  %11 = alloca %struct.comm_base*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcl_list*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sldns_buffer*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.comm_point*, align 8
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  store %struct.comm_base* %0, %struct.comm_base** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.tcl_list* %4, %struct.tcl_list** %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.sldns_buffer* %6, %struct.sldns_buffer** %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  %23 = call i64 @calloc(i64 1, i32 200)
  %24 = inttoptr i64 %23 to %struct.comm_point*
  store %struct.comm_point* %24, %struct.comm_point** %20, align 8
  %25 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %26 = icmp ne %struct.comm_point* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %9
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %204

28:                                               ; preds = %9
  %29 = call i64 @calloc(i64 1, i32 200)
  %30 = inttoptr i64 %29 to %struct.internal_event*
  %31 = bitcast %struct.internal_event* %30 to %struct.comm_point*
  %32 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %33 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %32, i32 0, i32 5
  store %struct.comm_point* %31, %struct.comm_point** %33, align 8
  %34 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %35 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %34, i32 0, i32 5
  %36 = load %struct.comm_point*, %struct.comm_point** %35, align 8
  %37 = icmp ne %struct.comm_point* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %40 = bitcast %struct.comm_point* %39 to %struct.internal_event*
  %41 = call i32 @free(%struct.internal_event* %40)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %204

42:                                               ; preds = %28
  %43 = load %struct.comm_base*, %struct.comm_base** %11, align 8
  %44 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 5
  %46 = load %struct.comm_point*, %struct.comm_point** %45, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 25
  store %struct.comm_base* %43, %struct.comm_base** %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %50 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %52 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %51, i32 0, i32 24
  store i32* null, i32** %52, align 8
  %53 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %54 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %56 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %55, i32 0, i32 23
  store i64 0, i64* %56, align 8
  %57 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 22
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %61 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tcl_list*, %struct.tcl_list** %15, align 8
  %63 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %64 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %63, i32 0, i32 21
  store %struct.tcl_list* %62, %struct.tcl_list** %64, align 8
  %65 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %66 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %65, i32 0, i32 20
  store i32* null, i32** %66, align 8
  %67 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %68 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %67, i32 0, i32 19
  store i64 0, i64* %68, align 8
  %69 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %70 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %69, i32 0, i32 18
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %73 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %75 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %74, i32 0, i32 17
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = call i64 @calloc(i64 %77, i32 8)
  %79 = inttoptr i64 %78 to %struct.comm_point**
  %80 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %81 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %80, i32 0, i32 3
  store %struct.comm_point** %79, %struct.comm_point*** %81, align 8
  %82 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %83 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %82, i32 0, i32 3
  %84 = load %struct.comm_point**, %struct.comm_point*** %83, align 8
  %85 = icmp ne %struct.comm_point** %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %42
  %87 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %88 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %87, i32 0, i32 5
  %89 = load %struct.comm_point*, %struct.comm_point** %88, align 8
  %90 = bitcast %struct.comm_point* %89 to %struct.internal_event*
  %91 = call i32 @free(%struct.internal_event* %90)
  %92 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %93 = bitcast %struct.comm_point* %92 to %struct.internal_event*
  %94 = call i32 @free(%struct.internal_event* %93)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %204

95:                                               ; preds = %42
  %96 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %97 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %96, i32 0, i32 16
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @comm_tcp_accept, align 4
  %99 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %100 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %99, i32 0, i32 15
  store i32 %98, i32* %100, align 8
  %101 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %102 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %101, i32 0, i32 14
  store i64 0, i64* %102, align 8
  %103 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %104 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %103, i32 0, i32 13
  store i64 0, i64* %104, align 8
  %105 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %106 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %105, i32 0, i32 12
  store i64 0, i64* %106, align 8
  %107 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %108 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %107, i32 0, i32 11
  store i64 0, i64* %108, align 8
  %109 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %110 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %109, i32 0, i32 7
  store i32* null, i32** %110, align 8
  %111 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %112 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %111, i32 0, i32 6
  store i32* null, i32** %112, align 8
  %113 = load i16, i16* @UB_EV_READ, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16, i16* @UB_EV_PERSIST, align 2
  %116 = sext i16 %115 to i32
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %21, align 2
  %119 = load %struct.comm_base*, %struct.comm_base** %11, align 8
  %120 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %125 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i16, i16* %21, align 2
  %128 = load i32, i32* @comm_point_tcp_accept_callback, align 4
  %129 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %130 = bitcast %struct.comm_point* %129 to %struct.internal_event*
  %131 = call %struct.internal_event* @ub_event_new(i32 %123, i32 %126, i16 signext %127, i32 %128, %struct.internal_event* %130)
  %132 = bitcast %struct.internal_event* %131 to %struct.comm_point*
  %133 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %134 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %133, i32 0, i32 5
  %135 = load %struct.comm_point*, %struct.comm_point** %134, align 8
  %136 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %135, i32 0, i32 5
  store %struct.comm_point* %132, %struct.comm_point** %136, align 8
  %137 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %138 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %137, i32 0, i32 5
  %139 = load %struct.comm_point*, %struct.comm_point** %138, align 8
  %140 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %139, i32 0, i32 5
  %141 = load %struct.comm_point*, %struct.comm_point** %140, align 8
  %142 = icmp eq %struct.comm_point* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %95
  %144 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %145 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %146 = bitcast %struct.comm_point* %145 to %struct.internal_event*
  %147 = call i32 @comm_point_delete(%struct.internal_event* %146)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %204

148:                                              ; preds = %95
  %149 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 5
  %151 = load %struct.comm_point*, %struct.comm_point** %150, align 8
  %152 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %151, i32 0, i32 5
  %153 = load %struct.comm_point*, %struct.comm_point** %152, align 8
  %154 = bitcast %struct.comm_point* %153 to %struct.internal_event*
  %155 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %156 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @ub_event_add(%struct.internal_event* %154, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %148
  %161 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %162 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %163 = bitcast %struct.comm_point* %162 to %struct.internal_event*
  %164 = call i32 @comm_point_delete(%struct.internal_event* %163)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %204

165:                                              ; preds = %148
  store i32 0, i32* %22, align 4
  br label %166

166:                                              ; preds = %199, %165
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %202

170:                                              ; preds = %166
  %171 = load %struct.comm_base*, %struct.comm_base** %11, align 8
  %172 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %173 = bitcast %struct.comm_point* %172 to %struct.internal_event*
  %174 = load i64, i64* %16, align 8
  %175 = load %struct.sldns_buffer*, %struct.sldns_buffer** %17, align 8
  %176 = load i32*, i32** %18, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = call %struct.internal_event* @comm_point_create_tcp_handler(%struct.comm_base* %171, %struct.internal_event* %173, i64 %174, %struct.sldns_buffer* %175, i32* %176, i8* %177)
  %179 = bitcast %struct.internal_event* %178 to %struct.comm_point*
  %180 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %181 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %180, i32 0, i32 3
  %182 = load %struct.comm_point**, %struct.comm_point*** %181, align 8
  %183 = load i32, i32* %22, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.comm_point*, %struct.comm_point** %182, i64 %184
  store %struct.comm_point* %179, %struct.comm_point** %185, align 8
  %186 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %187 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %186, i32 0, i32 3
  %188 = load %struct.comm_point**, %struct.comm_point*** %187, align 8
  %189 = load i32, i32* %22, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.comm_point*, %struct.comm_point** %188, i64 %190
  %192 = load %struct.comm_point*, %struct.comm_point** %191, align 8
  %193 = icmp ne %struct.comm_point* %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %170
  %195 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %196 = bitcast %struct.comm_point* %195 to %struct.internal_event*
  %197 = call i32 @comm_point_delete(%struct.internal_event* %196)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %204

198:                                              ; preds = %170
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %22, align 4
  br label %166

202:                                              ; preds = %166
  %203 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  store %struct.comm_point* %203, %struct.comm_point** %10, align 8
  br label %204

204:                                              ; preds = %202, %194, %160, %143, %86, %38, %27
  %205 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  ret %struct.comm_point* %205
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.internal_event*) #1

declare dso_local %struct.internal_event* @ub_event_new(i32, i32, i16 signext, i32, %struct.internal_event*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @comm_point_delete(%struct.internal_event*) #1

declare dso_local i64 @ub_event_add(%struct.internal_event*, i32*) #1

declare dso_local %struct.internal_event* @comm_point_create_tcp_handler(%struct.comm_base*, %struct.internal_event*, i64, %struct.sldns_buffer*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
