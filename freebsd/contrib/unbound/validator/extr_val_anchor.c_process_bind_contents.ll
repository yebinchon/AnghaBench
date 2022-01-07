; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_process_bind_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_process_bind_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"line %d, too long\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" DNSKEY \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"line %d, bad key\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"line %d, allocation failure\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"line %d, bad key before }\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"line %d, EOF before }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_anchors*, i32*, i32*, i32*)* @process_bind_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_bind_contents(%struct.val_anchors* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i8* null, i8** %14, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @sldns_buffer_clear(i32* %15)
  br label %17

17:                                               ; preds = %190, %130, %83, %38, %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @readkeyword_bindfile(i32* %18, i32* %19, i32* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %191

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @sldns_buffer_position(i32* %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = call i64* @sldns_buffer_begin(i32* %32)
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = call i64 @isspace(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @sldns_buffer_clear(i32* %39)
  br label %17

41:                                               ; preds = %31, %27, %24
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %84

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @sldns_buffer_current(i32* %45)
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 34
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @sldns_buffer_skip(i32* %56, i32 -1)
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @sldns_buffer_remaining(i32* %64)
  %66 = icmp slt i32 %65, 9
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %5, align 4
  br label %195

71:                                               ; preds = %63
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @sldns_buffer_write(i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %83

74:                                               ; preds = %60, %55
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %71
  br label %17

84:                                               ; preds = %44, %41
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %135

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  %89 = call i8* @sldns_buffer_current(i32* %88)
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 59
  br i1 %93, label %94, label %135

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 5
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @sldns_buffer_write_u8(i32* %98, i32 0)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 0, i32* %5, align 4
  br label %195

103:                                              ; preds = %94
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @sldns_buffer_skip(i32* %104, i32 -1)
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @sldns_buffer_write_u8(i32* %106, i32 0)
  %108 = load i32*, i32** %7, align 8
  %109 = call i64* @sldns_buffer_begin(i32* %108)
  %110 = bitcast i64* %109 to i8*
  %111 = call i8* @strdup(i8* %110)
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %103
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  store i32 0, i32* %5, align 4
  br label %195

118:                                              ; preds = %103
  %119 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @anchor_store_str(%struct.val_anchors* %119, i32* %120, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 @free(i8* %128)
  store i32 0, i32* %5, align 4
  br label %195

130:                                              ; preds = %118
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @sldns_buffer_clear(i32* %133)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %17

135:                                              ; preds = %87, %84
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i32*, i32** %7, align 8
  %140 = call i8* @sldns_buffer_current(i32* %139)
  %141 = getelementptr inbounds i8, i8* %140, i64 -1
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 125
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = load i32, i32* %10, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @sldns_buffer_write_u8(i32* %149, i32 0)
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  store i32 0, i32* %5, align 4
  br label %195

154:                                              ; preds = %145
  store i32 1, i32* %5, align 4
  br label %195

155:                                              ; preds = %138, %135
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32*, i32** %7, align 8
  %160 = call i8* @sldns_buffer_current(i32* %159)
  %161 = getelementptr inbounds i8, i8* %160, i64 -1
  %162 = load i8, i8* %161, align 1
  %163 = call i64 @isspace(i8 zeroext %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %186

166:                                              ; preds = %158, %155
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %185

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %171
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @sldns_buffer_remaining(i32* %175)
  %177 = icmp slt i32 %176, 9
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %180)
  store i32 0, i32* %5, align 4
  br label %195

182:                                              ; preds = %174
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @sldns_buffer_write(i32* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %185

185:                                              ; preds = %182, %171, %166
  br label %186

186:                                              ; preds = %185, %165
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %17

191:                                              ; preds = %17
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %191, %178, %154, %148, %124, %114, %97, %67
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @readkeyword_bindfile(i32*, i32*, i32*, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64* @sldns_buffer_begin(i32*) #1

declare dso_local i8* @sldns_buffer_current(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @sldns_buffer_write(i32*, i8*, i32) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @anchor_store_str(%struct.val_anchors*, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
