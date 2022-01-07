; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_sequence.c__gssapi_msg_order_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_msg_order = type { i32, i32*, i32, i32 }

@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_S_GAP_TOKEN = common dso_local global i32 0, align 4
@GSS_S_OLD_TOKEN = common dso_local global i32 0, align 4
@GSS_S_UNSEQ_TOKEN = common dso_local global i32 0, align 4
@GSS_S_DUPLICATE_TOKEN = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gssapi_msg_order_check(%struct.gss_msg_order* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gss_msg_order*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gss_msg_order* %0, %struct.gss_msg_order** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %9 = icmp eq %struct.gss_msg_order* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %11, i32* %3, align 4
  br label %173

12:                                               ; preds = %2
  %13 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %14 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %17 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %22, i32* %3, align 4
  br label %173

23:                                               ; preds = %12
  %24 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %25 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @elem_insert(%struct.gss_msg_order* %33, i64 0, i32 %34)
  %36 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %36, i32* %3, align 4
  br label %173

37:                                               ; preds = %23
  %38 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %39 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %42 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %50 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %48, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %58 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %63 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %55, %37
  %67 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @elem_insert(%struct.gss_msg_order* %67, i64 0, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %73, i32* %3, align 4
  br label %173

74:                                               ; preds = %66
  %75 = load i32, i32* @GSS_S_GAP_TOKEN, align 4
  store i32 %75, i32* %3, align 4
  br label %173

76:                                               ; preds = %61
  %77 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %78 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %85 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %88 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %83, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %76
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @GSS_S_OLD_TOKEN, align 4
  store i32 %99, i32* %3, align 4
  br label %173

100:                                              ; preds = %95
  %101 = load i32, i32* @GSS_S_UNSEQ_TOKEN, align 4
  store i32 %101, i32* %3, align 4
  br label %173

102:                                              ; preds = %76
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %105 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %108 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %103, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @GSS_S_DUPLICATE_TOKEN, align 4
  store i32 %116, i32* %3, align 4
  br label %173

117:                                              ; preds = %102
  store i64 0, i64* %7, align 8
  br label %118

118:                                              ; preds = %168, %117
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %121 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %119, %124
  br i1 %125, label %126, label %171

126:                                              ; preds = %118
  %127 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %128 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @GSS_S_DUPLICATE_TOKEN, align 4
  store i32 %136, i32* %3, align 4
  br label %173

137:                                              ; preds = %126
  %138 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %139 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, 1
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %137
  %148 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %149 = getelementptr inbounds %struct.gss_msg_order, %struct.gss_msg_order* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %147
  %157 = load %struct.gss_msg_order*, %struct.gss_msg_order** %4, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @elem_insert(%struct.gss_msg_order* %157, i64 %158, i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %164, i32* %3, align 4
  br label %173

165:                                              ; preds = %156
  %166 = load i32, i32* @GSS_S_UNSEQ_TOKEN, align 4
  store i32 %166, i32* %3, align 4
  br label %173

167:                                              ; preds = %147, %137
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %7, align 8
  br label %118

171:                                              ; preds = %118
  %172 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %165, %163, %135, %115, %100, %98, %74, %72, %32, %21, %10
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @elem_insert(%struct.gss_msg_order*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
