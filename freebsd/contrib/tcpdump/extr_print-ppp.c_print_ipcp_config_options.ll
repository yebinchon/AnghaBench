; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_ipcp_config_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_ipcp_config_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"\0A\09  %s Option (0x%02x), length %u (length bogus, should be >= 2)\00", align 1
@ipcpopt_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0A\09  %s Option (0x%02x), length %u\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" (length bogus, should be = 10)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c": src %s, dst %s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" (length bogus, should be >= 4)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c": %s (0x%02x):\00", align 1
@ipcpopt_compproto_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@IPCPOPT_IPCOMP_MINLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c" (length bogus, should be >= %u)\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"\0A\09    TCP Space %u, non-TCP Space %u, maxPeriod %u, maxTime %u, maxHdr %u\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\0A\09      Suboptions, length %u\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\0A\09\09%s Suboption #%u, length %u\00", align 1
@ipcpopt_compproto_subopt_values = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c" (length bogus, should be = 6)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"[|ipcp]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @print_ipcp_config_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_ipcp_config_options(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %241

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK2(i32 %19, i32 2)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %241

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i32, i32* @ipcpopt_values, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @tok2str(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_6__*
  %43 = call i32 @ND_PRINT(%struct.TYPE_6__* %42)
  store i32 0, i32* %4, align 4
  br label %241

44:                                               ; preds = %31
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load i32, i32* @ipcpopt_values, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @tok2str(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_6__*
  %53 = call i32 @ND_PRINT(%struct.TYPE_6__* %52)
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %211 [
    i32 137, label %55
    i32 135, label %79
    i32 136, label %192
    i32 133, label %192
    i32 132, label %192
    i32 131, label %192
    i32 130, label %192
    i32 129, label %192
  ]

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 10
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([32 x i8]* @.str.3 to %struct.TYPE_6__*))
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %241

62:                                               ; preds = %55
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ND_TCHECK2(i32 %65, i32 4)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = call i32 @ipaddr_string(%struct.TYPE_6__* %68, i32* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  %75 = call i32 @ipaddr_string(%struct.TYPE_6__* %72, i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_6__*
  %78 = call i32 @ND_PRINT(%struct.TYPE_6__* %77)
  br label %224

79:                                               ; preds = %44
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([32 x i8]* @.str.5 to %struct.TYPE_6__*))
  store i32 0, i32* %4, align 4
  br label %241

85:                                               ; preds = %79
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = call i32 @ND_TCHECK_16BITS(i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = call i32 @EXTRACT_16BITS(i32* %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = load i32, i32* @ipcpopt_compproto_values, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @tok2str(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to %struct.TYPE_6__*
  %99 = call i32 @ND_PRINT(%struct.TYPE_6__* %98)
  %100 = load i32, i32* %10, align 4
  switch i32 %100, label %190 [
    i32 128, label %101
    i32 134, label %102
  ]

101:                                              ; preds = %85
  br label %191

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @IPCPOPT_IPCOMP_MINLEN, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = load i32, i32* @IPCPOPT_IPCOMP_MINLEN, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.TYPE_6__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_6__* %110)
  store i32 0, i32* %4, align 4
  br label %241

112:                                              ; preds = %102
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IPCPOPT_IPCOMP_MINLEN, align 4
  %117 = call i32 @ND_TCHECK2(i32 %115, i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = call i32 @EXTRACT_16BITS(i32* %120)
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = call i32 @EXTRACT_16BITS(i32* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 8
  %127 = call i32 @EXTRACT_16BITS(i32* %126)
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = call i32 @EXTRACT_16BITS(i32* %129)
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 12
  %133 = call i32 @EXTRACT_16BITS(i32* %132)
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to %struct.TYPE_6__*
  %136 = call i32 @ND_PRINT(%struct.TYPE_6__* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @IPCPOPT_IPCOMP_MINLEN, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %189

140:                                              ; preds = %112
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @IPCPOPT_IPCOMP_MINLEN, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* @IPCPOPT_IPCOMP_MINLEN, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %6, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_6__*
  %152 = call i32 @ND_PRINT(%struct.TYPE_6__* %151)
  br label %153

153:                                              ; preds = %171, %140
  %154 = load i32, i32* %11, align 4
  %155 = icmp sge i32 %154, 2
  br i1 %155, label %156, label %188

156:                                              ; preds = %153
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ND_TCHECK2(i32 %158, i32 2)
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %13, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167, %156
  br label %188

171:                                              ; preds = %167
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = load i32, i32* @ipcpopt_compproto_subopt_values, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @tok2str(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to %struct.TYPE_6__*
  %180 = call i32 @ND_PRINT(%struct.TYPE_6__* %179)
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %6, align 8
  br label %153

188:                                              ; preds = %170, %153
  br label %189

189:                                              ; preds = %188, %112
  br label %191

190:                                              ; preds = %85
  br label %191

191:                                              ; preds = %190, %189, %101
  br label %224

192:                                              ; preds = %44, %44, %44, %44, %44, %44
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 6
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([31 x i8]* @.str.12 to %struct.TYPE_6__*))
  store i32 0, i32* %4, align 4
  br label %241

198:                                              ; preds = %192
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ND_TCHECK2(i32 %201, i32 4)
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = call i32 @ipaddr_string(%struct.TYPE_6__* %204, i32* %206)
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to %struct.TYPE_6__*
  %210 = call i32 @ND_PRINT(%struct.TYPE_6__* %209)
  br label %224

211:                                              ; preds = %44
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, 2
  %222 = call i32 @print_unknown_data(%struct.TYPE_6__* %217, i32* %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %216, %211
  br label %224

224:                                              ; preds = %223, %198, %191, %62
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 1
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = load i32, i32* %8, align 4
  %234 = sub nsw i32 %233, 2
  %235 = call i32 @print_unknown_data(%struct.TYPE_6__* %230, i32* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %229, %224
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %4, align 4
  br label %241

238:                                              ; No predecessors!
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %240 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([8 x i8]* @.str.15 to %struct.TYPE_6__*))
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %238, %236, %195, %106, %82, %58, %34, %30, %16
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_6__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
