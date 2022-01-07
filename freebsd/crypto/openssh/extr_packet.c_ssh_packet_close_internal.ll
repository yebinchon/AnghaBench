; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_close_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_close_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state*, %struct.session_state*, %struct.session_state* }
%struct.session_state = type { i64, i64, i64, i64, i32*, i32*, %struct.TYPE_4__, i64, %struct.TYPE_4__, i64, i64, i32**, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { double, double }

@MODE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"compress outgoing: raw data %llu, compressed %llu, factor %.2f\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"compress incoming: raw data %llu, compressed %llu, factor %.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, i32)* @ssh_packet_close_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssh_packet_close_internal(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.session_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ssh*, %struct.ssh** %3, align 8
  %10 = getelementptr inbounds %struct.ssh, %struct.ssh* %9, i32 0, i32 0
  %11 = load %struct.session_state*, %struct.session_state** %10, align 8
  store %struct.session_state* %11, %struct.session_state** %5, align 8
  %12 = load %struct.session_state*, %struct.session_state** %5, align 8
  %13 = getelementptr inbounds %struct.session_state, %struct.session_state* %12, i32 0, i32 16
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %212

17:                                               ; preds = %2
  %18 = load %struct.session_state*, %struct.session_state** %5, align 8
  %19 = getelementptr inbounds %struct.session_state, %struct.session_state* %18, i32 0, i32 16
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load %struct.session_state*, %struct.session_state** %5, align 8
  %24 = getelementptr inbounds %struct.session_state, %struct.session_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.session_state*, %struct.session_state** %5, align 8
  %27 = getelementptr inbounds %struct.session_state, %struct.session_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.session_state*, %struct.session_state** %5, align 8
  %32 = getelementptr inbounds %struct.session_state, %struct.session_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @close(i64 %33)
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.session_state*, %struct.session_state** %5, align 8
  %37 = getelementptr inbounds %struct.session_state, %struct.session_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @close(i64 %38)
  %40 = load %struct.session_state*, %struct.session_state** %5, align 8
  %41 = getelementptr inbounds %struct.session_state, %struct.session_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @close(i64 %42)
  br label %44

44:                                               ; preds = %35, %30
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.session_state*, %struct.session_state** %5, align 8
  %47 = getelementptr inbounds %struct.session_state, %struct.session_state* %46, i32 0, i32 15
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sshbuf_free(i64 %48)
  %50 = load %struct.session_state*, %struct.session_state** %5, align 8
  %51 = getelementptr inbounds %struct.session_state, %struct.session_state* %50, i32 0, i32 14
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sshbuf_free(i64 %52)
  %54 = load %struct.session_state*, %struct.session_state** %5, align 8
  %55 = getelementptr inbounds %struct.session_state, %struct.session_state* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @sshbuf_free(i64 %56)
  %58 = load %struct.session_state*, %struct.session_state** %5, align 8
  %59 = getelementptr inbounds %struct.session_state, %struct.session_state* %58, i32 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @sshbuf_free(i64 %60)
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %82, %45
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @MODE_MAX, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load %struct.session_state*, %struct.session_state** %5, align 8
  %68 = getelementptr inbounds %struct.session_state, %struct.session_state* %67, i32 0, i32 11
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kex_free_newkeys(i32* %72)
  %74 = load %struct.session_state*, %struct.session_state** %5, align 8
  %75 = getelementptr inbounds %struct.session_state, %struct.session_state* %74, i32 0, i32 11
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  store i32* null, i32** %78, align 8
  %79 = load %struct.ssh*, %struct.ssh** %3, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @ssh_clear_newkeys(%struct.ssh* %79, i64 %80)
  br label %82

82:                                               ; preds = %66
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %62

85:                                               ; preds = %62
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %178

88:                                               ; preds = %85
  %89 = load %struct.session_state*, %struct.session_state** %5, align 8
  %90 = getelementptr inbounds %struct.session_state, %struct.session_state* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %178

93:                                               ; preds = %88
  %94 = load %struct.session_state*, %struct.session_state** %5, align 8
  %95 = getelementptr inbounds %struct.session_state, %struct.session_state* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @sshbuf_free(i64 %96)
  %98 = load %struct.session_state*, %struct.session_state** %5, align 8
  %99 = getelementptr inbounds %struct.session_state, %struct.session_state* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %93
  %103 = load %struct.session_state*, %struct.session_state** %5, align 8
  %104 = getelementptr inbounds %struct.session_state, %struct.session_state* %103, i32 0, i32 8
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %7, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = fptoui double %107 to i64
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load double, double* %110, align 8
  %112 = fptoui double %111 to i64
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = fcmp oeq double %115, 0.000000e+00
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %126

118:                                              ; preds = %102
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load double, double* %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = fdiv double %121, %124
  br label %126

126:                                              ; preds = %118, %117
  %127 = phi double [ 0.000000e+00, %117 ], [ %125, %118 ]
  %128 = call i32 @debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %112, double %127)
  %129 = load %struct.session_state*, %struct.session_state** %5, align 8
  %130 = getelementptr inbounds %struct.session_state, %struct.session_state* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %135 = call i32 @deflateEnd(%struct.TYPE_4__* %134)
  br label %136

136:                                              ; preds = %133, %126
  br label %137

137:                                              ; preds = %136, %93
  %138 = load %struct.session_state*, %struct.session_state** %5, align 8
  %139 = getelementptr inbounds %struct.session_state, %struct.session_state* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %137
  %143 = load %struct.session_state*, %struct.session_state** %5, align 8
  %144 = getelementptr inbounds %struct.session_state, %struct.session_state* %143, i32 0, i32 6
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %8, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = fptoui double %147 to i64
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load double, double* %150, align 8
  %152 = fptoui double %151 to i64
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load double, double* %154, align 8
  %156 = fcmp oeq double %155, 0.000000e+00
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  br label %166

158:                                              ; preds = %142
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load double, double* %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load double, double* %163, align 8
  %165 = fdiv double %161, %164
  br label %166

166:                                              ; preds = %158, %157
  %167 = phi double [ 0.000000e+00, %157 ], [ %165, %158 ]
  %168 = call i32 @debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %148, i64 %152, double %167)
  %169 = load %struct.session_state*, %struct.session_state** %5, align 8
  %170 = getelementptr inbounds %struct.session_state, %struct.session_state* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = call i32 @inflateEnd(%struct.TYPE_4__* %174)
  br label %176

176:                                              ; preds = %173, %166
  br label %177

177:                                              ; preds = %176, %137
  br label %178

178:                                              ; preds = %177, %88, %85
  %179 = load %struct.session_state*, %struct.session_state** %5, align 8
  %180 = getelementptr inbounds %struct.session_state, %struct.session_state* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @cipher_free(i32* %181)
  %183 = load %struct.session_state*, %struct.session_state** %5, align 8
  %184 = getelementptr inbounds %struct.session_state, %struct.session_state* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @cipher_free(i32* %185)
  %187 = load %struct.session_state*, %struct.session_state** %5, align 8
  %188 = getelementptr inbounds %struct.session_state, %struct.session_state* %187, i32 0, i32 4
  store i32* null, i32** %188, align 8
  %189 = load %struct.session_state*, %struct.session_state** %5, align 8
  %190 = getelementptr inbounds %struct.session_state, %struct.session_state* %189, i32 0, i32 5
  store i32* null, i32** %190, align 8
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %178
  %194 = load %struct.ssh*, %struct.ssh** %3, align 8
  %195 = getelementptr inbounds %struct.ssh, %struct.ssh* %194, i32 0, i32 2
  %196 = load %struct.session_state*, %struct.session_state** %195, align 8
  %197 = call i32 @free(%struct.session_state* %196)
  %198 = load %struct.ssh*, %struct.ssh** %3, align 8
  %199 = getelementptr inbounds %struct.ssh, %struct.ssh* %198, i32 0, i32 2
  store %struct.session_state* null, %struct.session_state** %199, align 8
  %200 = load %struct.ssh*, %struct.ssh** %3, align 8
  %201 = getelementptr inbounds %struct.ssh, %struct.ssh* %200, i32 0, i32 1
  %202 = load %struct.session_state*, %struct.session_state** %201, align 8
  %203 = call i32 @free(%struct.session_state* %202)
  %204 = load %struct.ssh*, %struct.ssh** %3, align 8
  %205 = getelementptr inbounds %struct.ssh, %struct.ssh* %204, i32 0, i32 1
  store %struct.session_state* null, %struct.session_state** %205, align 8
  %206 = load %struct.ssh*, %struct.ssh** %3, align 8
  %207 = getelementptr inbounds %struct.ssh, %struct.ssh* %206, i32 0, i32 0
  %208 = load %struct.session_state*, %struct.session_state** %207, align 8
  %209 = call i32 @free(%struct.session_state* %208)
  %210 = load %struct.ssh*, %struct.ssh** %3, align 8
  %211 = getelementptr inbounds %struct.ssh, %struct.ssh* %210, i32 0, i32 0
  store %struct.session_state* null, %struct.session_state** %211, align 8
  br label %212

212:                                              ; preds = %16, %193, %178
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @sshbuf_free(i64) #1

declare dso_local i32 @kex_free_newkeys(i32*) #1

declare dso_local i32 @ssh_clear_newkeys(%struct.ssh*, i64) #1

declare dso_local i32 @debug(i8*, i64, i64, double) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_4__*) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_4__*) #1

declare dso_local i32 @cipher_free(i32*) #1

declare dso_local i32 @free(%struct.session_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
