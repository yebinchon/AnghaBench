; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_time.c_get_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_time.c_get_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32*, i32* }
%struct.hostent = type { i8** }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s.0.111\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@NIS_PK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.sockaddr_in*, i8*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32)* @get_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @get_server(%struct.sockaddr_in* %0, i8* %1, %struct.TYPE_13__* %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hostent*, align 8
  %16 = alloca %struct.hostent, align 8
  %17 = alloca [2 x i8*], align 16
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.in_addr*, align 8
  %20 = alloca %struct.in_addr*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %25 = icmp eq %struct.sockaddr_in* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %212

27:                                               ; preds = %23, %5
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %29 = icmp eq %struct.sockaddr_in* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call %struct.hostent* @gethostbyname(i8* %31)
  store %struct.hostent* %32, %struct.hostent** %15, align 8
  %33 = load %struct.hostent*, %struct.hostent** %15, align 8
  %34 = icmp eq %struct.hostent* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %212

36:                                               ; preds = %30
  br label %46

37:                                               ; preds = %27
  store %struct.hostent* %16, %struct.hostent** %15, align 8
  %38 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = bitcast i32* %40 to i8*
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 0
  store i8* %41, i8** %42, align 16
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 1
  store i8* null, i8** %43, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 0
  %45 = getelementptr inbounds %struct.hostent, %struct.hostent* %16, i32 0, i32 0
  store i8** %44, i8*** %45, align 8
  br label %46

46:                                               ; preds = %37, %36
  store i32 0, i32* %14, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %18, align 8
  br label %48

48:                                               ; preds = %111, %46
  %49 = load %struct.hostent*, %struct.hostent** %15, align 8
  %50 = getelementptr inbounds %struct.hostent, %struct.hostent* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br label %61

61:                                               ; preds = %57, %48
  %62 = phi i1 [ false, %48 ], [ %60, %57 ]
  br i1 %62, label %63, label %118

63:                                               ; preds = %61
  %64 = load %struct.hostent*, %struct.hostent** %15, align 8
  %65 = getelementptr inbounds %struct.hostent, %struct.hostent* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.in_addr*
  store %struct.in_addr* %71, %struct.in_addr** %19, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %73 = load %struct.in_addr*, %struct.in_addr** %19, align 8
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @inet_ntoa(i32 %75)
  %77 = call i32 @snprintf(i8* %72, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %79 = call i8* @strdup(i8* %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %63
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100, %95, %63
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @free_eps(%struct.TYPE_14__* %106, i32 %108)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %212

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 1
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %18, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %48

118:                                              ; preds = %61
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %182, %118
  %120 = load %struct.hostent*, %struct.hostent** %15, align 8
  %121 = getelementptr inbounds %struct.hostent, %struct.hostent* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %129, %130
  br label %132

132:                                              ; preds = %128, %119
  %133 = phi i1 [ false, %119 ], [ %131, %128 ]
  br i1 %133, label %134, label %189

134:                                              ; preds = %132
  %135 = load %struct.hostent*, %struct.hostent** %15, align 8
  %136 = getelementptr inbounds %struct.hostent, %struct.hostent* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = bitcast i8* %141 to %struct.in_addr*
  store %struct.in_addr* %142, %struct.in_addr** %20, align 8
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %144 = load %struct.in_addr*, %struct.in_addr** %20, align 8
  %145 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @inet_ntoa(i32 %146)
  %148 = call i32 @snprintf(i8* %143, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %147)
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %150 = call i8* @strdup(i8* %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  store i32* %151, i32** %153, align 8
  %154 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  store i32* %159, i32** %161, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %176, label %166

166:                                              ; preds = %134
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %171, %166, %134
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @free_eps(%struct.TYPE_14__* %177, i32 %179)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %212

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 1
  store %struct.TYPE_14__* %186, %struct.TYPE_14__** %18, align 8
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %119

189:                                              ; preds = %132
  %190 = load i8*, i8** %8, align 8
  %191 = ptrtoint i8* %190 to i64
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  store i32 %194, i32* %197, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store %struct.TYPE_14__* %198, %struct.TYPE_14__** %201, align 8
  %202 = load i32, i32* @NIS_PK_NONE, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  store i32* null, i32** %207, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %211, %struct.TYPE_13__** %6, align 8
  br label %212

212:                                              ; preds = %189, %176, %105, %35, %26
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %213
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free_eps(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
