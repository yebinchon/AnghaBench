; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_res_queryN.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_res_queryN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_target = type { i32, i32, i32, i32, i32*, %struct.res_target* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@MAXPACKET = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@QUERY = common dso_local global i32 0, align 4
@RES_F_EDNS0ERR = common dso_local global i32 0, align 4
@RES_USE_EDNS0 = common dso_local global i32 0, align 4
@RES_USE_DNSSEC = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c";; res_nquery: retry without EDNS0\0A\00", align 1
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@TRY_AGAIN = common dso_local global i32 0, align 4
@NO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.res_target*, %struct.TYPE_8__*)* @res_queryN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_queryN(i8* %0, %struct.res_target* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.res_target*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.res_target*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.res_target* %1, %struct.res_target** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 132, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* @MAXPACKET, align 4
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = load i32, i32* @NETDB_INTERNAL, align 4
  %26 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %24, i32 %25)
  store i32 -1, i32* %4, align 4
  br label %208

27:                                               ; preds = %3
  %28 = load %struct.res_target*, %struct.res_target** %6, align 8
  store %struct.res_target* %28, %struct.res_target** %12, align 8
  br label %29

29:                                               ; preds = %177, %27
  %30 = load %struct.res_target*, %struct.res_target** %12, align 8
  %31 = icmp ne %struct.res_target* %30, null
  br i1 %31, label %32, label %181

32:                                               ; preds = %29
  %33 = load %struct.res_target*, %struct.res_target** %12, align 8
  %34 = getelementptr inbounds %struct.res_target, %struct.res_target* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = bitcast i8* %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %9, align 8
  %38 = load %struct.res_target*, %struct.res_target** %12, align 8
  %39 = getelementptr inbounds %struct.res_target, %struct.res_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  %41 = load %struct.res_target*, %struct.res_target** %12, align 8
  %42 = getelementptr inbounds %struct.res_target, %struct.res_target* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load %struct.res_target*, %struct.res_target** %12, align 8
  %45 = getelementptr inbounds %struct.res_target, %struct.res_target* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %17, align 8
  %47 = load %struct.res_target*, %struct.res_target** %12, align 8
  %48 = getelementptr inbounds %struct.res_target, %struct.res_target* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %18, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %140, %32
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 132, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = load i32, i32* @QUERY, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @MAXPACKET, align 4
  %63 = call i32 @res_nmkquery(%struct.TYPE_8__* %56, i32 %57, i8* %58, i32 %59, i32 %60, i32* null, i32 0, i32* null, i32* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RES_F_EDNS0ERR, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RES_USE_EDNS0, align 4
  %78 = load i32, i32* @RES_USE_DNSSEC, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @MAXPACKET, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @res_nopt(%struct.TYPE_8__* %83, i32 %84, i32* %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %82, %73, %66, %53
  %90 = load i32, i32* %10, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @free(i32* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = load i32, i32* @NO_RECOVERY, align 4
  %97 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %208

99:                                               ; preds = %89
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @res_nsend(%struct.TYPE_8__* %100, i32* %101, i32 %102, i32* %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %145

108:                                              ; preds = %99
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @RES_USE_EDNS0, align 4
  %113 = load i32, i32* @RES_USE_DNSSEC, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %108
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %118, %121
  %123 = load i32, i32* @RES_F_EDNS0ERR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %117
  %127 = load i32, i32* @RES_F_EDNS0ERR, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RES_DEBUG, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %126
  br label %53

141:                                              ; preds = %117, %108
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %13, align 4
  br label %177

145:                                              ; preds = %99
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 133, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %145
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 132
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ntohs(i32 %160)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157, %152
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %13, align 4
  br label %177

167:                                              ; preds = %157
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ntohs(i32 %170)
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.res_target*, %struct.res_target** %12, align 8
  %176 = getelementptr inbounds %struct.res_target, %struct.res_target* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %163, %141
  %178 = load %struct.res_target*, %struct.res_target** %12, align 8
  %179 = getelementptr inbounds %struct.res_target, %struct.res_target* %178, i32 0, i32 5
  %180 = load %struct.res_target*, %struct.res_target** %179, align 8
  store %struct.res_target* %180, %struct.res_target** %12, align 8
  br label %29

181:                                              ; preds = %29
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @free(i32* %182)
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %181
  %187 = load i32, i32* %13, align 4
  switch i32 %187, label %201 [
    i32 130, label %188
    i32 128, label %192
    i32 132, label %196
    i32 133, label %200
    i32 131, label %200
    i32 129, label %200
  ]

188:                                              ; preds = %186
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = load i32, i32* @HOST_NOT_FOUND, align 4
  %191 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %189, i32 %190)
  br label %205

192:                                              ; preds = %186
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = load i32, i32* @TRY_AGAIN, align 4
  %195 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %193, i32 %194)
  br label %205

196:                                              ; preds = %186
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = load i32, i32* @NO_DATA, align 4
  %199 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %197, i32 %198)
  br label %205

200:                                              ; preds = %186, %186, %186
  br label %201

201:                                              ; preds = %186, %200
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %203 = load i32, i32* @NO_RECOVERY, align 4
  %204 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %202, i32 %203)
  br label %205

205:                                              ; preds = %201, %196, %192, %188
  store i32 -1, i32* %4, align 4
  br label %208

206:                                              ; preds = %181
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %205, %92, %23
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @res_nmkquery(%struct.TYPE_8__*, i32, i8*, i32, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @res_nopt(%struct.TYPE_8__*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @res_nsend(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
