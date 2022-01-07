; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_opt_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_opt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_rtoinfo = type { i64 }
%struct.sctp_assocparams = type { i64 }
%struct.sctp_setprim = type { i64 }
%struct.sctp_paddrparams = type { i64 }
%struct.sctp_assoc_value = type { i64 }
%struct.sctp_authkey = type { i64 }
%struct.sctp_authkeyid = type { i64 }
%struct.sctp_sack_info = type { i64 }
%struct.sctp_status = type { i64 }
%struct.sctp_paddrinfo = type { i64 }
%struct.sctp_authchunks = type { i64 }
%struct.sctp_timeouts = type { i64 }
%struct.sctp_event = type { i64 }
%struct.sctp_sndinfo = type { i64 }
%struct.sctp_default_prinfo = type { i64 }
%struct.sctp_paddrthlds = type { i64 }
%struct.sctp_udpencaps = type { i64 }
%struct.sctp_prstatus = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SCTP_CURRENT_ASSOC = common dso_local global i64 0, align 8
@SCTP_ALL_ASSOC = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_opt_info(i32 %0, i64 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %196

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @SCTP_CURRENT_ASSOC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @SCTP_ALL_ASSOC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %196

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %188 [
    i32 130, label %28
    i32 158, label %33
    i32 152, label %38
    i32 136, label %43
    i32 140, label %48
    i32 144, label %53
    i32 156, label %58
    i32 157, label %63
    i32 150, label %68
    i32 154, label %73
    i32 129, label %78
    i32 146, label %83
    i32 138, label %88
    i32 145, label %93
    i32 128, label %98
    i32 147, label %103
    i32 151, label %108
    i32 153, label %113
    i32 139, label %118
    i32 131, label %123
    i32 149, label %128
    i32 133, label %133
    i32 155, label %138
    i32 159, label %143
    i32 132, label %148
    i32 141, label %153
    i32 137, label %158
    i32 143, label %163
    i32 148, label %168
    i32 134, label %173
    i32 135, label %178
    i32 142, label %183
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to %struct.sctp_rtoinfo*
  %32 = getelementptr inbounds %struct.sctp_rtoinfo, %struct.sctp_rtoinfo* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  br label %189

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = bitcast i8* %35 to %struct.sctp_assocparams*
  %37 = getelementptr inbounds %struct.sctp_assocparams, %struct.sctp_assocparams* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %189

38:                                               ; preds = %26
  %39 = load i64, i64* %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = bitcast i8* %40 to %struct.sctp_assocparams*
  %42 = getelementptr inbounds %struct.sctp_assocparams, %struct.sctp_assocparams* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %189

43:                                               ; preds = %26
  %44 = load i64, i64* %8, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = bitcast i8* %45 to %struct.sctp_setprim*
  %47 = getelementptr inbounds %struct.sctp_setprim, %struct.sctp_setprim* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %189

48:                                               ; preds = %26
  %49 = load i64, i64* %8, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to %struct.sctp_paddrparams*
  %52 = getelementptr inbounds %struct.sctp_paddrparams, %struct.sctp_paddrparams* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %189

53:                                               ; preds = %26
  %54 = load i64, i64* %8, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to %struct.sctp_assoc_value*
  %57 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %189

58:                                               ; preds = %26
  %59 = load i64, i64* %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to %struct.sctp_authkey*
  %62 = getelementptr inbounds %struct.sctp_authkey, %struct.sctp_authkey* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  br label %189

63:                                               ; preds = %26
  %64 = load i64, i64* %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = bitcast i8* %65 to %struct.sctp_authkeyid*
  %67 = getelementptr inbounds %struct.sctp_authkeyid, %struct.sctp_authkeyid* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  br label %189

68:                                               ; preds = %26
  %69 = load i64, i64* %8, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = bitcast i8* %70 to %struct.sctp_sack_info*
  %72 = getelementptr inbounds %struct.sctp_sack_info, %struct.sctp_sack_info* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  br label %189

73:                                               ; preds = %26
  %74 = load i64, i64* %8, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = bitcast i8* %75 to %struct.sctp_assoc_value*
  %77 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  br label %189

78:                                               ; preds = %26
  %79 = load i64, i64* %8, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = bitcast i8* %80 to %struct.sctp_status*
  %82 = getelementptr inbounds %struct.sctp_status, %struct.sctp_status* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  br label %189

83:                                               ; preds = %26
  %84 = load i64, i64* %8, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = bitcast i8* %85 to %struct.sctp_paddrinfo*
  %87 = getelementptr inbounds %struct.sctp_paddrinfo, %struct.sctp_paddrinfo* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %189

88:                                               ; preds = %26
  %89 = load i64, i64* %8, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to %struct.sctp_authchunks*
  %92 = getelementptr inbounds %struct.sctp_authchunks, %struct.sctp_authchunks* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  br label %189

93:                                               ; preds = %26
  %94 = load i64, i64* %8, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to %struct.sctp_authchunks*
  %97 = getelementptr inbounds %struct.sctp_authchunks, %struct.sctp_authchunks* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  br label %189

98:                                               ; preds = %26
  %99 = load i64, i64* %8, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast i8* %100 to %struct.sctp_timeouts*
  %102 = getelementptr inbounds %struct.sctp_timeouts, %struct.sctp_timeouts* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %189

103:                                              ; preds = %26
  %104 = load i64, i64* %8, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = bitcast i8* %105 to %struct.sctp_event*
  %107 = getelementptr inbounds %struct.sctp_event, %struct.sctp_event* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  br label %189

108:                                              ; preds = %26
  %109 = load i64, i64* %8, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = bitcast i8* %110 to %struct.sctp_sndinfo*
  %112 = getelementptr inbounds %struct.sctp_sndinfo, %struct.sctp_sndinfo* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  br label %189

113:                                              ; preds = %26
  %114 = load i64, i64* %8, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = bitcast i8* %115 to %struct.sctp_default_prinfo*
  %117 = getelementptr inbounds %struct.sctp_default_prinfo, %struct.sctp_default_prinfo* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %189

118:                                              ; preds = %26
  %119 = load i64, i64* %8, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = bitcast i8* %120 to %struct.sctp_paddrthlds*
  %122 = getelementptr inbounds %struct.sctp_paddrthlds, %struct.sctp_paddrthlds* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  br label %189

123:                                              ; preds = %26
  %124 = load i64, i64* %8, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = bitcast i8* %125 to %struct.sctp_udpencaps*
  %127 = getelementptr inbounds %struct.sctp_udpencaps, %struct.sctp_udpencaps* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  br label %189

128:                                              ; preds = %26
  %129 = load i64, i64* %8, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = bitcast i8* %130 to %struct.sctp_assoc_value*
  %132 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %189

133:                                              ; preds = %26
  %134 = load i64, i64* %8, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = bitcast i8* %135 to %struct.sctp_assoc_value*
  %137 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %136, i32 0, i32 0
  store i64 %134, i64* %137, align 8
  br label %189

138:                                              ; preds = %26
  %139 = load i64, i64* %8, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = bitcast i8* %140 to %struct.sctp_assoc_value*
  %142 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  br label %189

143:                                              ; preds = %26
  %144 = load i64, i64* %8, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = bitcast i8* %145 to %struct.sctp_assoc_value*
  %147 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  br label %189

148:                                              ; preds = %26
  %149 = load i64, i64* %8, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = bitcast i8* %150 to %struct.sctp_assoc_value*
  %152 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  br label %189

153:                                              ; preds = %26
  %154 = load i64, i64* %8, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = bitcast i8* %155 to %struct.sctp_assoc_value*
  %157 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  br label %189

158:                                              ; preds = %26
  %159 = load i64, i64* %8, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = bitcast i8* %160 to %struct.sctp_assoc_value*
  %162 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  br label %189

163:                                              ; preds = %26
  %164 = load i64, i64* %8, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = bitcast i8* %165 to %struct.sctp_assoc_value*
  %167 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %166, i32 0, i32 0
  store i64 %164, i64* %167, align 8
  br label %189

168:                                              ; preds = %26
  %169 = load i64, i64* %8, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = bitcast i8* %170 to %struct.sctp_assoc_value*
  %172 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  br label %189

173:                                              ; preds = %26
  %174 = load i64, i64* %8, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = bitcast i8* %175 to %struct.sctp_prstatus*
  %177 = getelementptr inbounds %struct.sctp_prstatus, %struct.sctp_prstatus* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  br label %189

178:                                              ; preds = %26
  %179 = load i64, i64* %8, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = bitcast i8* %180 to %struct.sctp_prstatus*
  %182 = getelementptr inbounds %struct.sctp_prstatus, %struct.sctp_prstatus* %181, i32 0, i32 0
  store i64 %179, i64* %182, align 8
  br label %189

183:                                              ; preds = %26
  %184 = load i64, i64* %8, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = bitcast i8* %185 to %struct.sctp_assoc_value*
  %187 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %186, i32 0, i32 0
  store i64 %184, i64* %187, align 8
  br label %189

188:                                              ; preds = %26
  br label %189

189:                                              ; preds = %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %133, %128, %123, %118, %113, %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @IPPROTO_SCTP, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i8*, i8** %10, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 @getsockopt(i32 %190, i32 %191, i32 %192, i8* %193, i32* %194)
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %189, %24, %14
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
