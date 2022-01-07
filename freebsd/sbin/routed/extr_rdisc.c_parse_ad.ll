; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_parse_ad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_parse_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_limit = type { i32 }
%struct.dr = type { i64, i64, i64, i64, i64, %struct.interface* }
%struct.interface = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@parse_ad.bad_gate = internal global %struct.msg_limit zeroinitializer, align 4
@RIP_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"router %s advertising bad gateway %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"    discard Router Discovery Ad pointing at us\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"    discard Router Discovery Ad toward unreachable net\00", align 1
@MinMaxAdvertiseInterval = common dso_local global i64 0, align 8
@drs = common dso_local global %struct.dr* null, align 8
@MAX_ADS = common dso_local global i64 0, align 8
@IS_SICK = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_SOLICITATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, %struct.interface*)* @parse_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ad(i64 %0, i64 %1, i64 %2, i64 %3, %struct.interface* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.interface*, align 8
  %11 = alloca %struct.dr*, align 8
  %12 = alloca %struct.dr*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.interface* %4, %struct.interface** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @RIP_DEFAULT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @check_dst(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16, %5
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @naddr_ntoa(i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @naddr_ntoa(i64 %24)
  %26 = call i32 @msglim(%struct.msg_limit* @parse_ad.bad_gate, i64 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  br label %214

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = call i32* @ifwithaddr(i64 %28, i32 1, i32 0)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @trace_pkt(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %214

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.interface*, %struct.interface** %10, align 8
  %36 = getelementptr inbounds %struct.interface, %struct.interface* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.interface*, %struct.interface** %10, align 8
  %39 = getelementptr inbounds %struct.interface, %struct.interface* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @on_net(i64 %34, i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = call i32 @trace_pkt(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %214

45:                                               ; preds = %33
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ntohl(i64 %46)
  %48 = call i64 @UNSIGN_PREF(i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @MinMaxAdvertiseInterval, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %45
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %55, %51
  store %struct.dr* null, %struct.dr** %12, align 8
  %57 = load %struct.dr*, %struct.dr** @drs, align 8
  store %struct.dr* %57, %struct.dr** %11, align 8
  br label %58

58:                                               ; preds = %176, %56
  %59 = load %struct.dr*, %struct.dr** %11, align 8
  %60 = load %struct.dr*, %struct.dr** @drs, align 8
  %61 = load i64, i64* @MAX_ADS, align 8
  %62 = getelementptr inbounds %struct.dr, %struct.dr* %60, i64 %61
  %63 = icmp ult %struct.dr* %59, %62
  br i1 %63, label %64, label %179

64:                                               ; preds = %58
  %65 = load %struct.dr*, %struct.dr** %11, align 8
  %66 = getelementptr inbounds %struct.dr, %struct.dr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load %struct.dr*, %struct.dr** %11, align 8
  store %struct.dr* %71, %struct.dr** %12, align 8
  br label %179

72:                                               ; preds = %64
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %176

76:                                               ; preds = %72
  %77 = load %struct.dr*, %struct.dr** %11, align 8
  %78 = getelementptr inbounds %struct.dr, %struct.dr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load %struct.dr*, %struct.dr** %11, align 8
  store %struct.dr* %82, %struct.dr** %12, align 8
  br label %175

83:                                               ; preds = %76
  %84 = load %struct.dr*, %struct.dr** %12, align 8
  %85 = icmp eq %struct.dr* %84, null
  br i1 %85, label %86, label %124

86:                                               ; preds = %83
  %87 = load %struct.interface*, %struct.interface** %10, align 8
  %88 = getelementptr inbounds %struct.interface, %struct.interface* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IS_SICK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %86
  %94 = load %struct.dr*, %struct.dr** %11, align 8
  %95 = getelementptr inbounds %struct.dr, %struct.dr* %94, i32 0, i32 5
  %96 = load %struct.interface*, %struct.interface** %95, align 8
  %97 = getelementptr inbounds %struct.interface, %struct.interface* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IS_SICK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %93, %86
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.dr*, %struct.dr** %11, align 8
  %105 = getelementptr inbounds %struct.dr, %struct.dr* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.interface*, %struct.interface** %10, align 8
  %110 = getelementptr inbounds %struct.interface, %struct.interface* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dr*, %struct.dr** %11, align 8
  %113 = getelementptr inbounds %struct.dr, %struct.dr* %112, i32 0, i32 5
  %114 = load %struct.interface*, %struct.interface** %113, align 8
  %115 = getelementptr inbounds %struct.interface, %struct.interface* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %111, %116
  %118 = load i32, i32* @IS_SICK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %108, %93
  %122 = load %struct.dr*, %struct.dr** %11, align 8
  store %struct.dr* %122, %struct.dr** %12, align 8
  br label %123

123:                                              ; preds = %121, %108, %102
  br label %174

124:                                              ; preds = %83
  %125 = load %struct.dr*, %struct.dr** %12, align 8
  %126 = getelementptr inbounds %struct.dr, %struct.dr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %124
  %130 = load %struct.dr*, %struct.dr** %12, align 8
  %131 = getelementptr inbounds %struct.dr, %struct.dr* %130, i32 0, i32 5
  %132 = load %struct.interface*, %struct.interface** %131, align 8
  %133 = getelementptr inbounds %struct.interface, %struct.interface* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IS_SICK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %129
  %139 = load %struct.dr*, %struct.dr** %11, align 8
  %140 = getelementptr inbounds %struct.dr, %struct.dr* %139, i32 0, i32 5
  %141 = load %struct.interface*, %struct.interface** %140, align 8
  %142 = getelementptr inbounds %struct.interface, %struct.interface* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IS_SICK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %170, label %147

147:                                              ; preds = %138, %129
  %148 = load %struct.dr*, %struct.dr** %12, align 8
  %149 = getelementptr inbounds %struct.dr, %struct.dr* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.dr*, %struct.dr** %11, align 8
  %152 = getelementptr inbounds %struct.dr, %struct.dr* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %147
  %156 = load %struct.dr*, %struct.dr** %12, align 8
  %157 = getelementptr inbounds %struct.dr, %struct.dr* %156, i32 0, i32 5
  %158 = load %struct.interface*, %struct.interface** %157, align 8
  %159 = getelementptr inbounds %struct.interface, %struct.interface* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dr*, %struct.dr** %11, align 8
  %162 = getelementptr inbounds %struct.dr, %struct.dr* %161, i32 0, i32 5
  %163 = load %struct.interface*, %struct.interface** %162, align 8
  %164 = getelementptr inbounds %struct.interface, %struct.interface* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %160, %165
  %167 = load i32, i32* @IS_SICK, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %155, %138
  %171 = load %struct.dr*, %struct.dr** %11, align 8
  store %struct.dr* %171, %struct.dr** %12, align 8
  br label %172

172:                                              ; preds = %170, %155, %147
  br label %173

173:                                              ; preds = %172, %124
  br label %174

174:                                              ; preds = %173, %123
  br label %175

175:                                              ; preds = %174, %81
  br label %176

176:                                              ; preds = %175, %75
  %177 = load %struct.dr*, %struct.dr** %11, align 8
  %178 = getelementptr inbounds %struct.dr, %struct.dr* %177, i32 1
  store %struct.dr* %178, %struct.dr** %11, align 8
  br label %58

179:                                              ; preds = %70, %58
  %180 = load %struct.dr*, %struct.dr** %12, align 8
  %181 = icmp eq %struct.dr* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %214

183:                                              ; preds = %179
  %184 = load %struct.interface*, %struct.interface** %10, align 8
  %185 = load %struct.dr*, %struct.dr** %12, align 8
  %186 = getelementptr inbounds %struct.dr, %struct.dr* %185, i32 0, i32 5
  store %struct.interface* %184, %struct.interface** %186, align 8
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.dr*, %struct.dr** %12, align 8
  %189 = getelementptr inbounds %struct.dr, %struct.dr* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @now, i32 0, i32 0), align 8
  %191 = load %struct.dr*, %struct.dr** %12, align 8
  %192 = getelementptr inbounds %struct.dr, %struct.dr* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.dr*, %struct.dr** %12, align 8
  %195 = getelementptr inbounds %struct.dr, %struct.dr* %194, i32 0, i32 4
  store i64 %193, i64* %195, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load %struct.dr*, %struct.dr** %12, align 8
  %198 = getelementptr inbounds %struct.dr, %struct.dr* %197, i32 0, i32 3
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load %struct.interface*, %struct.interface** %10, align 8
  %201 = call i64 @PREF(i64 %199, %struct.interface* %200)
  %202 = load %struct.dr*, %struct.dr** %12, align 8
  %203 = getelementptr inbounds %struct.dr, %struct.dr* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.interface*, %struct.interface** %10, align 8
  %205 = getelementptr inbounds %struct.interface, %struct.interface* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IS_SICK, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %183
  %211 = load i32, i32* @MAX_SOLICITATIONS, align 4
  %212 = load %struct.interface*, %struct.interface** %10, align 8
  %213 = getelementptr inbounds %struct.interface, %struct.interface* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %20, %31, %43, %182, %210, %183
  ret void
}

declare dso_local i32 @check_dst(i64) #1

declare dso_local i32 @msglim(%struct.msg_limit*, i64, i8*, i32, i32) #1

declare dso_local i32 @naddr_ntoa(i64) #1

declare dso_local i32* @ifwithaddr(i64, i32, i32) #1

declare dso_local i32 @trace_pkt(i8*) #1

declare dso_local i32 @on_net(i64, i32, i32) #1

declare dso_local i64 @UNSIGN_PREF(i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i64 @PREF(i64, %struct.interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
