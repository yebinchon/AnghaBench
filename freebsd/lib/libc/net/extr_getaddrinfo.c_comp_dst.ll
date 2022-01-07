; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_comp_dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_comp_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ai_order = type { i64, i64, i32, i64, i64, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@AIO_SRCFLAG_DEPRECATED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @comp_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_dst(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ai_order*, align 8
  %7 = alloca %struct.ai_order*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ai_order*
  store %struct.ai_order* %9, %struct.ai_order** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ai_order*
  store %struct.ai_order* %11, %struct.ai_order** %7, align 8
  %12 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %13 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_UNSPEC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %20 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_UNSPEC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %203

26:                                               ; preds = %18, %2
  %27 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %28 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_UNSPEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %35 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_UNSPEC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %203

41:                                               ; preds = %33, %26
  %42 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %43 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %46 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %51 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %54 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %203

58:                                               ; preds = %49, %41
  %59 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %60 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %63 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %68 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %71 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %203

75:                                               ; preds = %66, %58
  %76 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %77 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_UNSPEC, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %75
  %83 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %84 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AF_UNSPEC, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %82
  %90 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %91 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AIO_SRCFLAG_DEPRECATED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %98 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AIO_SRCFLAG_DEPRECATED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %203

104:                                              ; preds = %96, %89
  %105 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %106 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AIO_SRCFLAG_DEPRECATED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %113 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AIO_SRCFLAG_DEPRECATED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %203

119:                                              ; preds = %111, %104
  br label %120

120:                                              ; preds = %119, %82, %75
  %121 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %122 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %127 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %130 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 -1, i32* %3, align 4
  br label %203

134:                                              ; preds = %125, %120
  %135 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %136 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %141 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %144 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 1, i32* %3, align 4
  br label %203

148:                                              ; preds = %139, %134
  %149 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %150 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %149, i32 0, i32 5
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %157 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %156, i32 0, i32 5
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %155, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %148
  %165 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %166 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %165, i32 0, i32 5
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AF_INET, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %164
  %175 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %176 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %179 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  store i32 -1, i32* %3, align 4
  br label %203

183:                                              ; preds = %174
  %184 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %185 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %188 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp slt i64 %186, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  store i32 1, i32* %3, align 4
  br label %203

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %164, %148
  %194 = load %struct.ai_order*, %struct.ai_order** %7, align 8
  %195 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ai_order*, %struct.ai_order** %6, align 8
  %198 = getelementptr inbounds %struct.ai_order, %struct.ai_order* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  store i32 1, i32* %3, align 4
  br label %203

202:                                              ; preds = %193
  store i32 -1, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %201, %191, %182, %147, %133, %118, %103, %74, %57, %40, %25
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
