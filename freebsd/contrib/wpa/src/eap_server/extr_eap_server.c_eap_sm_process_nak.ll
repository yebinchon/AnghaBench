; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_process_nak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_sm_process_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"EAP: processing NAK (current EAP method index %d)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EAP: configured methods\00", align 1
@EAP_MAX_METHODS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP: list of methods supported by the peer\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"EAP: new list of configured methods\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sm_process_nak(%struct.eap_sm* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %189

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_MSGDUMP, align 4
  %16 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @MSG_MSGDUMP, align 4
  %21 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = bitcast %struct.TYPE_5__* %25 to i64*
  %27 = load i32, i32* @EAP_MAX_METHODS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 16
  %30 = trunc i64 %29 to i32
  %31 = call i32 @wpa_hexdump(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64* %26, i32 %30)
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @wpa_hexdump(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64* %33, i32 %35)
  %37 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %38 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %153, %118, %14
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EAP_MAX_METHODS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %44
  %58 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EAP_TYPE_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br label %70

70:                                               ; preds = %57, %44
  %71 = phi i1 [ true, %44 ], [ %69, %57 ]
  br label %72

72:                                               ; preds = %70, %40
  %73 = phi i1 [ false, %40 ], [ %71, %70 ]
  br i1 %73, label %74, label %176

74:                                               ; preds = %72
  %75 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %76 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %122

88:                                               ; preds = %74
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %99 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %97, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  br label %114

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %89

114:                                              ; preds = %109, %89
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %40

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %87
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* @EAP_MAX_METHODS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %122
  %128 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %129 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %137 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %143
  %145 = load i32, i32* @EAP_MAX_METHODS, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 16
  %151 = trunc i64 %150 to i32
  %152 = call i32 @os_memmove(%struct.TYPE_5__* %135, %struct.TYPE_5__* %144, i32 %151)
  br label %153

153:                                              ; preds = %127, %122
  %154 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %155 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %156 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load i32, i32* @EAP_MAX_METHODS, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i64 %154, i64* %164, align 8
  %165 = load i64, i64* @EAP_TYPE_NONE, align 8
  %166 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %167 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = load i32, i32* @EAP_MAX_METHODS, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i64 %165, i64* %175, align 8
  br label %40

176:                                              ; preds = %72
  %177 = load i32, i32* @MSG_MSGDUMP, align 4
  %178 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %179 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = bitcast %struct.TYPE_5__* %182 to i64*
  %184 = load i32, i32* @EAP_MAX_METHODS, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 16
  %187 = trunc i64 %186 to i32
  %188 = call i32 @wpa_hexdump(i32 %177, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64* %183, i32 %187)
  br label %189

189:                                              ; preds = %176, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i32 @os_memmove(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
