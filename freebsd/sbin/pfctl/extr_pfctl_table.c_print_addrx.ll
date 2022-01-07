; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_addrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_table.c_print_addrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_addr = type { i32, i64, i32, i32, i32, i64, i32 }
%union.sockaddr_union = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@__const.print_addrx.buf = private unnamed_addr constant [256 x i8] c"{error}\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.print_addrx.fb = private unnamed_addr constant [10 x i8] c" MADCZX Y ", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%c %c%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@PFR_FB_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"{error}\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"print_addrx: strlcpy\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\09%c%s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09 nomatch\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@NI_NAMEREQD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"\09(%s)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_addrx(%struct.pfr_addr* %0, %struct.pfr_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.pfr_addr*, align 8
  %5 = alloca %struct.pfr_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [256 x i8], align 16
  %9 = alloca [10 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.sockaddr_union, align 8
  store %struct.pfr_addr* %0, %struct.pfr_addr** %4, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = bitcast [256 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @__const.print_addrx.buf, i32 0, i32 0), i64 256, i1 false)
  %16 = bitcast [10 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.print_addrx.fb, i32 0, i32 0), i64 10, i1 false)
  %17 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %18 = icmp ne %struct.pfr_addr* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %21 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %25 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %22, %19 ], [ %26, %23 ]
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %30, 10
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ 63, %38 ]
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  %42 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %43 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 128, i32 32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %50 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %53 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %52, i32 0, i32 6
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %55 = call i32 @inet_ntop(i64 %51, i32* %53, i8* %54, i32 256)
  %56 = load i8, i8* %7, align 1
  %57 = sext i8 %56 to i32
  %58 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %59 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 33, i32 32
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %63, i8* %64)
  %66 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %67 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %39
  %72 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %73 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %39
  %77 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %78 = icmp ne %struct.pfr_addr* %77, null
  br i1 %78, label %79, label %117

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @PFR_FB_NONE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %79
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %85 = call i32 @strlcpy(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 256)
  %86 = sext i32 %85 to i64
  %87 = icmp uge i64 %86, 256
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %92 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %95 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %94, i32 0, i32 6
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %97 = call i32 @inet_ntop(i64 %93, i32* %95, i8* %96, i32 256)
  %98 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %99 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 33, i32 32
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %103, i8* %104)
  %106 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %107 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %90
  %112 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %113 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %90
  br label %117

117:                                              ; preds = %116, %79, %76
  %118 = load %struct.pfr_addr*, %struct.pfr_addr** %5, align 8
  %119 = icmp ne %struct.pfr_addr* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @PFR_FB_NONE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %120, %117
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %182

129:                                              ; preds = %126
  %130 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %131 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %182

135:                                              ; preds = %129
  %136 = load i32, i32* @NI_MAXHOST, align 4
  %137 = zext i32 %136 to i64
  %138 = call i8* @llvm.stacksave()
  store i8* %138, i8** %12, align 8
  %139 = alloca i8, i64 %137, align 16
  store i64 %137, i64* %13, align 8
  %140 = trunc i64 %137 to i32
  %141 = call i32 @strlcpy(i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  %142 = call i32 @bzero(%union.sockaddr_union* %14, i32 16)
  %143 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %144 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AF_INET, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %135
  %154 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 4, i32* %155, align 8
  %156 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %157 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_4__*
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %169

161:                                              ; preds = %135
  %162 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i32 4, i32* %163, align 8
  %164 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %165 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_5__*
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %161, %153
  %170 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %171 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = trunc i64 %137 to i32
  %175 = load i32, i32* @NI_NAMEREQD, align 4
  %176 = call i64 @getnameinfo(%struct.TYPE_6__* %170, i32 %173, i8* %139, i32 %174, i32* null, i32 0, i32 %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %139)
  br label %180

180:                                              ; preds = %178, %169
  %181 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %181)
  br label %182

182:                                              ; preds = %180, %129, %126
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @inet_ntop(i64, i32*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @bzero(%union.sockaddr_union*, i32) #2

declare dso_local i64 @getnameinfo(%struct.TYPE_6__*, i32, i8*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
