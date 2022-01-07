; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rip.c_rip_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rip.c_rip_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.rip = type { i32, i32 }
%struct.rip_netinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%sRIPv%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c", %s, length: %u\00", align 1
@rip_cmd_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"unknown command (%u)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c", routes: %u%s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" or less\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rip_print(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rip*, align 8
  %8 = alloca %struct.rip_netinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = load i32, i32* @tstr, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  %21 = call i32 @ND_PRINT(%struct.TYPE_7__* %20)
  br label %191

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %22
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 8
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* @tstr, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_7__* %45)
  br label %191

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = bitcast i32* %52 to %struct.rip*
  store %struct.rip* %53, %struct.rip** %7, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 1
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %61 = load %struct.rip*, %struct.rip** %7, align 8
  %62 = getelementptr inbounds %struct.rip, %struct.rip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_7__*
  %66 = call i32 @ND_PRINT(%struct.TYPE_7__* %65)
  %67 = load %struct.rip*, %struct.rip** %7, align 8
  %68 = getelementptr inbounds %struct.rip, %struct.rip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %76 [
    i32 0, label %70
  ]

70:                                               ; preds = %47
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = load %struct.rip*, %struct.rip** %7, align 8
  %73 = getelementptr inbounds %struct.rip, %struct.rip* %72, i32 0, i32 1
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @print_unknown_data(%struct.TYPE_7__* %71, i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %191

76:                                               ; preds = %47
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load i32, i32* @rip_cmd_values, align 4
  %79 = load %struct.rip*, %struct.rip** %7, align 8
  %80 = getelementptr inbounds %struct.rip, %struct.rip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @tok2str(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_7__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_7__* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %191

92:                                               ; preds = %76
  %93 = load %struct.rip*, %struct.rip** %7, align 8
  %94 = getelementptr inbounds %struct.rip, %struct.rip* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %161 [
    i32 131, label %96
    i32 130, label %96
    i32 129, label %159
    i32 133, label %159
    i32 132, label %159
    i32 128, label %160
  ]

96:                                               ; preds = %92, %92
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.rip*, %struct.rip** %7, align 8
  %104 = getelementptr inbounds %struct.rip, %struct.rip* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %109 = bitcast i8* %108 to %struct.TYPE_7__*
  %110 = call i32 @ND_PRINT(%struct.TYPE_7__* %109)
  %111 = load %struct.rip*, %struct.rip** %7, align 8
  %112 = getelementptr inbounds %struct.rip, %struct.rip* %111, i64 1
  %113 = bitcast %struct.rip* %112 to %struct.rip_netinfo*
  store %struct.rip_netinfo* %113, %struct.rip_netinfo** %8, align 8
  br label %114

114:                                              ; preds = %146, %96
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp uge i64 %116, 4
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = load %struct.rip*, %struct.rip** %7, align 8
  %120 = getelementptr inbounds %struct.rip, %struct.rip* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = load %struct.rip_netinfo*, %struct.rip_netinfo** %8, align 8
  %126 = call i32 @rip_entry_print_v1(%struct.TYPE_7__* %124, %struct.rip_netinfo* %125)
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, 4
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  br label %145

131:                                              ; preds = %118
  %132 = load %struct.rip*, %struct.rip** %7, align 8
  %133 = getelementptr inbounds %struct.rip, %struct.rip* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = load %struct.rip_netinfo*, %struct.rip_netinfo** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @rip_entry_print_v2(%struct.TYPE_7__* %137, %struct.rip_netinfo* %138, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %144

143:                                              ; preds = %131
  br label %149

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.rip_netinfo*, %struct.rip_netinfo** %8, align 8
  %148 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %147, i32 1
  store %struct.rip_netinfo* %148, %struct.rip_netinfo** %8, align 8
  br label %114

149:                                              ; preds = %143, %114
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = load i32, i32* @tstr, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_7__*
  %157 = call i32 @ND_PRINT(%struct.TYPE_7__* %156)
  br label %158

158:                                              ; preds = %152, %149
  br label %176

159:                                              ; preds = %92, %92, %92
  br label %176

160:                                              ; preds = %92
  br label %161

161:                                              ; preds = %92, %160
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sle i32 %164, 1
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = load %struct.rip*, %struct.rip** %7, align 8
  %169 = bitcast %struct.rip* %168 to i32*
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @print_unknown_data(%struct.TYPE_7__* %167, i32* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  br label %191

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %161
  br label %176

176:                                              ; preds = %175, %159, %158
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = load %struct.rip*, %struct.rip** %7, align 8
  %184 = bitcast %struct.rip* %183 to i32*
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @print_unknown_data(%struct.TYPE_7__* %182, i32* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  br label %191

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %176
  br label %191

191:                                              ; preds = %16, %41, %91, %173, %188, %190, %70
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @rip_entry_print_v1(%struct.TYPE_7__*, %struct.rip_netinfo*) #1

declare dso_local i32 @rip_entry_print_v2(%struct.TYPE_7__*, %struct.rip_netinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
