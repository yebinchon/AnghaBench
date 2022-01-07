; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag_info = type { i64, i32, i64, i32, i32 }
%struct.khash = type { i32, i64, i64 }

@HOPCNT_INFINITY = common dso_local global i64 0, align 8
@KS_NEW = common dso_local global i32 0, align 4
@KS_ADD = common dso_local global i32 0, align 4
@AGS_GATEWAY = common dso_local global i32 0, align 4
@KS_GATEWAY = common dso_local global i32 0, align 4
@KS_STATIC = common dso_local global i32 0, align 4
@KS_DEL_ADD = common dso_local global i32 0, align 4
@KS_CHANGE = common dso_local global i32 0, align 4
@KS_DYNAMIC = common dso_local global i32 0, align 4
@KS_DELETED = common dso_local global i32 0, align 4
@KS_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag_info*)* @kern_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kern_out(%struct.ag_info* %0) #0 {
  %2 = alloca %struct.ag_info*, align 8
  %3 = alloca %struct.khash*, align 8
  store %struct.ag_info* %0, %struct.ag_info** %2, align 8
  %4 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %5 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HOPCNT_INFINITY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %11 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @htonl(i32 %12)
  %14 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %15 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.khash* @kern_find(i32 %13, i32 %16, i32 0)
  store %struct.khash* %17, %struct.khash** %3, align 8
  %18 = load %struct.khash*, %struct.khash** %3, align 8
  %19 = icmp eq %struct.khash* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %222

21:                                               ; preds = %9
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %24 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %28 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.khash* @kern_add(i32 %26, i32 %29)
  store %struct.khash* %30, %struct.khash** %3, align 8
  br label %31

31:                                               ; preds = %22, %21
  %32 = load %struct.khash*, %struct.khash** %3, align 8
  %33 = getelementptr inbounds %struct.khash, %struct.khash* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @KS_NEW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %31
  %39 = load i32, i32* @KS_ADD, align 4
  %40 = load %struct.khash*, %struct.khash** %3, align 8
  %41 = getelementptr inbounds %struct.khash, %struct.khash* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %43 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AGS_GATEWAY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i32, i32* @KS_GATEWAY, align 4
  %50 = load %struct.khash*, %struct.khash** %3, align 8
  %51 = getelementptr inbounds %struct.khash, %struct.khash* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %38
  %55 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %56 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.khash*, %struct.khash** %3, align 8
  %59 = getelementptr inbounds %struct.khash, %struct.khash* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %61 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.khash*, %struct.khash** %3, align 8
  %64 = getelementptr inbounds %struct.khash, %struct.khash* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  br label %222

65:                                               ; preds = %31
  %66 = load %struct.khash*, %struct.khash** %3, align 8
  %67 = getelementptr inbounds %struct.khash, %struct.khash* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @KS_STATIC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %222

73:                                               ; preds = %65
  %74 = load %struct.khash*, %struct.khash** %3, align 8
  %75 = getelementptr inbounds %struct.khash, %struct.khash* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %78 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.khash*, %struct.khash** %3, align 8
  %83 = getelementptr inbounds %struct.khash, %struct.khash* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %86 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %81, %73
  %90 = load %struct.khash*, %struct.khash** %3, align 8
  %91 = getelementptr inbounds %struct.khash, %struct.khash* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HOPCNT_INFINITY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* @KS_DEL_ADD, align 4
  %97 = load %struct.khash*, %struct.khash** %3, align 8
  %98 = getelementptr inbounds %struct.khash, %struct.khash* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %103 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.khash*, %struct.khash** %3, align 8
  %106 = getelementptr inbounds %struct.khash, %struct.khash* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %108 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.khash*, %struct.khash** %3, align 8
  %111 = getelementptr inbounds %struct.khash, %struct.khash* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* @KS_CHANGE, align 4
  %113 = load %struct.khash*, %struct.khash** %3, align 8
  %114 = getelementptr inbounds %struct.khash, %struct.khash* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %101, %81
  %118 = load %struct.khash*, %struct.khash** %3, align 8
  %119 = getelementptr inbounds %struct.khash, %struct.khash* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @KS_DYNAMIC, align 4
  %122 = load i32, i32* @KS_DELETED, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %117
  %127 = load i32, i32* @KS_DYNAMIC, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.khash*, %struct.khash** %3, align 8
  %130 = getelementptr inbounds %struct.khash, %struct.khash* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @KS_ADD, align 4
  %134 = load i32, i32* @KS_DEL_ADD, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.khash*, %struct.khash** %3, align 8
  %137 = getelementptr inbounds %struct.khash, %struct.khash* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %126, %117
  %141 = load %struct.khash*, %struct.khash** %3, align 8
  %142 = getelementptr inbounds %struct.khash, %struct.khash* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @KS_GATEWAY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %140
  %148 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %149 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @AGS_GATEWAY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* @KS_GATEWAY, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.khash*, %struct.khash** %3, align 8
  %158 = getelementptr inbounds %struct.khash, %struct.khash* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @KS_ADD, align 4
  %162 = load i32, i32* @KS_DEL_ADD, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.khash*, %struct.khash** %3, align 8
  %165 = getelementptr inbounds %struct.khash, %struct.khash* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %196

168:                                              ; preds = %147, %140
  %169 = load %struct.khash*, %struct.khash** %3, align 8
  %170 = getelementptr inbounds %struct.khash, %struct.khash* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @KS_GATEWAY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %195, label %175

175:                                              ; preds = %168
  %176 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %177 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @AGS_GATEWAY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load i32, i32* @KS_GATEWAY, align 4
  %184 = load %struct.khash*, %struct.khash** %3, align 8
  %185 = getelementptr inbounds %struct.khash, %struct.khash* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @KS_ADD, align 4
  %189 = load i32, i32* @KS_DEL_ADD, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.khash*, %struct.khash** %3, align 8
  %192 = getelementptr inbounds %struct.khash, %struct.khash* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %182, %175, %168
  br label %196

196:                                              ; preds = %195, %154
  %197 = load %struct.khash*, %struct.khash** %3, align 8
  %198 = getelementptr inbounds %struct.khash, %struct.khash* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HOPCNT_INFINITY, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %196
  %203 = load %struct.khash*, %struct.khash** %3, align 8
  %204 = getelementptr inbounds %struct.khash, %struct.khash* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @KS_DEL_ADD, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load i32, i32* @KS_DELETE, align 4
  %211 = load %struct.khash*, %struct.khash** %3, align 8
  %212 = getelementptr inbounds %struct.khash, %struct.khash* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %222

215:                                              ; preds = %202, %196
  %216 = load i32, i32* @KS_DELETE, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.khash*, %struct.khash** %3, align 8
  %219 = getelementptr inbounds %struct.khash, %struct.khash* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %20, %54, %72, %215, %209
  ret void
}

declare dso_local %struct.khash* @kern_find(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.khash* @kern_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
