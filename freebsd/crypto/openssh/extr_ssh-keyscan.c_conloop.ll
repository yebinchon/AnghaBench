; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_conloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_conloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.timeval }

@tq = common dso_local global i32 0, align 4
@read_wait_nfdset = common dso_local global i32 0, align 4
@read_wait = common dso_local global i32 0, align 4
@maxfd = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s: exception!\00", align 1
@fdcon = common dso_local global %struct.TYPE_7__* null, align 8
@c_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @conloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conloop() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @monotime_tv(%struct.timeval* %2)
  %9 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* @tq)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %28, %12
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = bitcast %struct.timeval* %1 to i8*
  %40 = bitcast %struct.timeval* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1000000
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %54, %36
  br label %64

62:                                               ; preds = %28, %20, %0
  %63 = call i32 @timerclear(%struct.timeval* %1)
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* @read_wait_nfdset, align 4
  %66 = call i32* @xcalloc(i32 %65, i32 4)
  store i32* %66, i32** %3, align 8
  %67 = load i32, i32* @read_wait_nfdset, align 4
  %68 = call i32* @xcalloc(i32 %67, i32 4)
  store i32* %68, i32** %4, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @read_wait, align 4
  %71 = load i32, i32* @read_wait_nfdset, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i32* %69, i32 %70, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @read_wait, align 4
  %78 = load i32, i32* @read_wait_nfdset, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i32* %76, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %105, %64
  %84 = load i32, i32* @maxfd, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @select(i32 %84, i32* %85, i32* null, i32* %86, %struct.timeval* %1)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EAGAIN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @EINTR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* @errno, align 8
  %99 = load i64, i64* @EWOULDBLOCK, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %93, %89
  %102 = phi i1 [ true, %93 ], [ true, %89 ], [ %100, %97 ]
  br label %103

103:                                              ; preds = %101, %83
  %104 = phi i1 [ false, %83 ], [ %102, %101 ]
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  br label %83

106:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %136, %106
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @maxfd, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = call i64 @FD_ISSET(i32 %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fdcon, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @confree(i32 %124)
  br label %135

126:                                              ; preds = %111
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = call i64 @FD_ISSET(i32 %127, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @conread(i32 %132)
  br label %134

134:                                              ; preds = %131, %126
  br label %135

135:                                              ; preds = %134, %116
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %107

139:                                              ; preds = %107
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @free(i32* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @free(i32* %142)
  %144 = call %struct.TYPE_6__* @TAILQ_FIRST(i32* @tq)
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %5, align 8
  br label %145

145:                                              ; preds = %178, %139
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = icmp ne %struct.TYPE_6__* %146, null
  br i1 %147, label %148, label %176

148:                                              ; preds = %145
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %174, label %156

156:                                              ; preds = %148
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.timeval, %struct.timeval* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %160, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.timeval, %struct.timeval* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %168, %170
  br label %172

172:                                              ; preds = %164, %156
  %173 = phi i1 [ false, %156 ], [ %171, %164 ]
  br label %174

174:                                              ; preds = %172, %148
  %175 = phi i1 [ true, %148 ], [ %173, %172 ]
  br label %176

176:                                              ; preds = %174, %145
  %177 = phi i1 [ false, %145 ], [ %175, %174 ]
  br i1 %177, label %178, label %187

178:                                              ; preds = %176
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %7, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = load i32, i32* @c_link, align 4
  %184 = call %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__* %182, i32 %183)
  store %struct.TYPE_6__* %184, %struct.TYPE_6__** %5, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @conrecycle(i32 %185)
  br label %145

187:                                              ; preds = %176
  ret void
}

declare dso_local i32 @monotime_tv(%struct.timeval*) #1

declare dso_local %struct.TYPE_6__* @TAILQ_FIRST(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @confree(i32) #1

declare dso_local i32 @conread(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.TYPE_6__* @TAILQ_NEXT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @conrecycle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
