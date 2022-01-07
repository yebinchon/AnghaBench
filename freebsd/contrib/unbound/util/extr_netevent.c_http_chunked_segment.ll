; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_chunked_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_http_chunked_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i64, i32, i32, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32, i32, %struct.comm_reply }
%struct.comm_reply = type { i32 }

@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*)* @http_chunked_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_chunked_segment(%struct.comm_point* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comm_point*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.comm_reply, align 4
  %8 = alloca i64, align 8
  store %struct.comm_point* %0, %struct.comm_point** %3, align 8
  %9 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %10 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @sldns_buffer_limit(i32 %11)
  %13 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %14 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %18 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %1
  %23 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %29 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @sldns_buffer_skip(i32 %27, i32 %31)
  %33 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %34 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sldns_buffer_clear(i32 %35)
  %37 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %41 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sldns_buffer_current(i32 %42)
  %44 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sldns_buffer_remaining(i32 %46)
  %48 = call i32 @sldns_buffer_write(i32 %39, i32 %43, i32 %47)
  %49 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %50 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sldns_buffer_flip(i32 %51)
  %53 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %54 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @sldns_buffer_position(i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %58 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sldns_buffer_set_position(i32 %59, i64 0)
  %61 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @sldns_buffer_set_limit(i32 %63, i64 %64)
  %66 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 7
  %68 = bitcast %struct.comm_reply* %7 to i8*
  %69 = bitcast %struct.comm_reply* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 8 %69, i64 4, i1 false)
  %70 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 4
  %72 = load i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %71, align 8
  %73 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)* %72)
  %74 = call i32 @fptr_ok(i32 %73)
  %75 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %76 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %75, i32 0, i32 4
  %77 = load i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %76, align 8
  %78 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %79 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %80 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NETEVENT_NOERROR, align 4
  %83 = call i32 %77(%struct.comm_point* %78, i32 %81, i32 %82, %struct.comm_reply* %7)
  %84 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %172

88:                                               ; preds = %22
  %89 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %90 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sldns_buffer_clear(i32 %91)
  %93 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %94 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %97 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sldns_buffer_begin(i32 %98)
  %100 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %101 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @sldns_buffer_remaining(i32 %102)
  %104 = call i32 @sldns_buffer_write(i32 %95, i32 %99, i32 %103)
  %105 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %106 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sldns_buffer_flip(i32 %107)
  %109 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %110 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %109, i32 0, i32 2
  store i32 3, i32* %110, align 8
  store i32 2, i32* %2, align 4
  br label %172

111:                                              ; preds = %1
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %114 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %118 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @sldns_buffer_capacity(i32 %119)
  %121 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %122 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @sldns_buffer_limit(i32 %123)
  %125 = sub i64 %120, %124
  store i64 %125, i64* %4, align 8
  %126 = load i64, i64* %4, align 8
  %127 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %128 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp uge i64 %126, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %111
  %132 = load i64, i64* %4, align 8
  %133 = icmp uge i64 %132, 2048
  br i1 %133, label %134, label %151

134:                                              ; preds = %131, %111
  %135 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %136 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @sldns_buffer_limit(i32 %137)
  store i64 %138, i64* %8, align 8
  %139 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %140 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @sldns_buffer_clear(i32 %141)
  %143 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %144 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @sldns_buffer_set_position(i32 %145, i64 %146)
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %150 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  store i32 1, i32* %2, align 4
  br label %172

151:                                              ; preds = %131
  %152 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %153 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %155 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @sldns_buffer_set_position(i32 %156, i64 0)
  %158 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %159 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %158, i32 0, i32 4
  %160 = load i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %159, align 8
  %161 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)* %160)
  %162 = call i32 @fptr_ok(i32 %161)
  %163 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %164 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %163, i32 0, i32 4
  %165 = load i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*, i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)** %164, align 8
  %166 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %167 = load %struct.comm_point*, %struct.comm_point** %3, align 8
  %168 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @NETEVENT_NOERROR, align 4
  %171 = call i32 %165(%struct.comm_point* %166, i32 %169, i32 %170, %struct.comm_reply* null)
  store i32 1, i32* %2, align 4
  br label %172

172:                                              ; preds = %151, %134, %88, %87
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i32 @sldns_buffer_skip(i32, i32) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @sldns_buffer_write(i32, i32, i32) #1

declare dso_local i32 @sldns_buffer_current(i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i64 @sldns_buffer_position(i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32, i64) #1

declare dso_local i32 @sldns_buffer_set_limit(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i64 @sldns_buffer_capacity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
