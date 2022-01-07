; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_parse.c_ns_parserr2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_parse.c_ns_parserr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i64, i32, i32 }

@ns_s_max = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NS_MAXNNAME = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ns_s_qd = common dso_local global i32 0, align 4
@NS_INT32SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_parserr2(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ns_s_max, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = call i32 @RETERR(i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @setsection(%struct.TYPE_7__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %42, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41, %38
  %52 = load i32, i32* @ENODEV, align 4
  %53 = call i32 @RETERR(i32 %52)
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @setsection(%struct.TYPE_7__* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = call i32 @ns_skiprr(i32 %73, i32 %76, i32 %77, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %239

87:                                               ; preds = %70
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %64
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NS_MAXNNAME, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = call i32 @ns_name_unpack2(i32 %99, i32 %102, i32 %105, i32 %108, i32 %109, i32* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %239

116:                                              ; preds = %96
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NS_INT16SZ, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @NS_INT16SZ, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %116
  %134 = load i32, i32* @EMSGSIZE, align 4
  %135 = call i32 @RETERR(i32 %134)
  br label %136

136:                                              ; preds = %133, %116
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @NS_GET16(i32 %139, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @NS_GET16(i32 %146, i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @ns_s_qd, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %136
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  store i32* null, i32** %160, align 8
  br label %220

161:                                              ; preds = %136
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @NS_INT32SZ, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* @NS_INT16SZ, align 4
  %168 = add nsw i32 %166, %167
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %161
  %174 = load i32, i32* @EMSGSIZE, align 4
  %175 = call i32 @RETERR(i32 %174)
  br label %176

176:                                              ; preds = %173, %161
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @NS_GET32(i64 %179, i32 %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @NS_GET16(i32 %186, i32 %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %193, %196
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %197, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %176
  %203 = load i32, i32* @EMSGSIZE, align 4
  %204 = call i32 @RETERR(i32 %203)
  br label %205

205:                                              ; preds = %202, %176
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i32*
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  store i32* %210, i32** %212, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %205, %154
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %224, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %220
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  %237 = call i32 @setsection(%struct.TYPE_7__* %234, i32 %236)
  br label %238

238:                                              ; preds = %233, %220
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %238, %115, %86
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @setsection(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ns_skiprr(i32, i32, i32, i32) #1

declare dso_local i32 @ns_name_unpack2(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @NS_GET16(i32, i32) #1

declare dso_local i32 @NS_GET32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
