; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_bsn_message_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_bsn_message_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"\0A\09 subtype %s\00", align 1
@bsn_subtype_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown (0x%08x)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", index %u\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c", mask %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c", report_mirror_ports %s\00", align 1
@bsn_onoff_str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"bogus (%u)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c", vport_no %u\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c", service %u\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c", data '\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c", status 0x%08x\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @of10_bsn_message_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_bsn_message_print(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %216

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK2(i32 %18, i32 4)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @EXTRACT_32BITS(i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @bsn_subtype_str, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @tok2str(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %203 [
    i32 138, label %32
    i32 133, label %53
    i32 139, label %53
    i32 132, label %86
    i32 135, label %86
    i32 136, label %86
    i32 140, label %109
    i32 137, label %109
    i32 141, label %109
    i32 142, label %109
    i32 134, label %109
    i32 128, label %114
    i32 131, label %130
    i32 130, label %166
    i32 129, label %187
  ]

32:                                               ; preds = %16
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 12
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %216

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ND_TCHECK2(i32 %38, i32 1)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @ND_PRINT(i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ND_TCHECK2(i32 %49, i32 7)
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  store i32* %52, i32** %7, align 8
  br label %214

53:                                               ; preds = %16, %16
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 12
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %216

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ND_TCHECK2(i32 %59, i32 1)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ND_PRINT(i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ND_TCHECK2(i32 %70, i32 3)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ND_TCHECK2(i32 %75, i32 4)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ipaddr_string(i32* %78, i32* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i32*
  %83 = call i32 @ND_PRINT(i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %7, align 8
  br label %214

86:                                               ; preds = %16, %16, %16
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %216

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ND_TCHECK2(i32 %92, i32 1)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* @bsn_onoff_str, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @tok2str(i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i32*
  %101 = call i32 @ND_PRINT(i32* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32* %103, i32** %7, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ND_TCHECK2(i32 %105, i32 3)
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32* %108, i32** %7, align 8
  br label %214

109:                                              ; preds = %16, %16, %16, %16, %16
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %216

113:                                              ; preds = %109
  br label %214

114:                                              ; preds = %16
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 8
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %216

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ND_TCHECK2(i32 %120, i32 4)
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @EXTRACT_32BITS(i32* %123)
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @ND_PRINT(i32* %126)
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32* %129, i32** %7, align 8
  br label %214

130:                                              ; preds = %16
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 8
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %216

134:                                              ; preds = %130
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ND_TCHECK2(i32 %136, i32 4)
  %138 = load i32*, i32** %6, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @EXTRACT_32BITS(i32* %139)
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i32*
  %143 = call i32 @ND_PRINT(i32* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  store i32* %145, i32** %7, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.8 to i32*))
  %148 = load i32*, i32** %6, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @fn_printn(i32* %148, i32* %149, i32 %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %134
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.9 to i32*))
  br label %230

158:                                              ; preds = %134
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.9 to i32*))
  %161 = load i32, i32* %9, align 4
  %162 = sub nsw i32 %161, 8
  %163 = load i32*, i32** %7, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %7, align 8
  br label %214

166:                                              ; preds = %16
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.8 to i32*))
  %169 = load i32*, i32** %6, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sub nsw i32 %171, 4
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @fn_printn(i32* %169, i32* %170, i32 %172, i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %166
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.9 to i32*))
  br label %230

179:                                              ; preds = %166
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.9 to i32*))
  %182 = load i32, i32* %9, align 4
  %183 = sub nsw i32 %182, 4
  %184 = load i32*, i32** %7, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %7, align 8
  br label %214

187:                                              ; preds = %16
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 8
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %216

191:                                              ; preds = %187
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ND_TCHECK2(i32 %193, i32 4)
  %195 = load i32*, i32** %6, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 @EXTRACT_32BITS(i32* %196)
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i32*
  %200 = call i32 @ND_PRINT(i32* %199)
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 4
  store i32* %202, i32** %7, align 8
  br label %214

203:                                              ; preds = %16
  %204 = load i32*, i32** %7, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = sub nsw i32 %206, 4
  %208 = call i32 @ND_TCHECK2(i32 %205, i32 %207)
  %209 = load i32, i32* %9, align 4
  %210 = sub nsw i32 %209, 4
  %211 = load i32*, i32** %7, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %7, align 8
  br label %214

214:                                              ; preds = %203, %191, %179, %158, %118, %113, %90, %57, %36
  %215 = load i32*, i32** %7, align 8
  store i32* %215, i32** %5, align 8
  br label %237

216:                                              ; preds = %190, %133, %117, %112, %89, %56, %35, %15
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* @istr, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i32*
  %221 = call i32 @ND_PRINT(i32* %220)
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @ND_TCHECK2(i32 %223, i32 %224)
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32* %229, i32** %5, align 8
  br label %237

230:                                              ; preds = %176, %155
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* @tstr, align 4
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i32*
  %235 = call i32 @ND_PRINT(i32* %234)
  %236 = load i32*, i32** %8, align 8
  store i32* %236, i32** %5, align 8
  br label %237

237:                                              ; preds = %230, %216, %214
  %238 = load i32*, i32** %5, align 8
  ret i32* %238
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i32 @fn_printn(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
