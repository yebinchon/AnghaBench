; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_handle_v_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_handle_v_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.thread_resume*)* }
%struct.thread_resume = type { i32, i32, i32, i64 }

@cont_thread = common dso_local global i32 0, align 4
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_v_cont(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread_resume*, align 8
  %12 = alloca %struct.thread_resume, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 5
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %19, %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 59)
  store i8* %25, i8** %7, align 8
  br label %16

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 24
  %31 = trunc i64 %30 to i32
  %32 = call %struct.thread_resume* @malloc(i32 %31)
  store %struct.thread_resume* %32, %struct.thread_resume** %11, align 8
  %33 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %12, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %12, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %12, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %12, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  store i8* %38, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %187, %26
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %188

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %46, i64 %48
  %50 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 115
  br i1 %55, label %62, label %56

56:                                               ; preds = %43
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 83
  br i1 %61, label %62, label %68

62:                                               ; preds = %56, %43
  %63 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %63, i64 %65
  %67 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  br label %88

68:                                               ; preds = %56
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 99
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 67
  br i1 %79, label %80, label %86

80:                                               ; preds = %74, %68
  %81 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %81, i64 %83
  %85 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  br label %87

86:                                               ; preds = %74
  br label %227

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %62
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 83
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 67
  br i1 %99, label %100, label %123

100:                                              ; preds = %94, %88
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i8* @strtol(i8* %102, i8** %8, i32 16)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %227

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  store i8* %110, i8** %7, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @target_signal_to_host_p(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %227

115:                                              ; preds = %109
  %116 = load i32, i32* %13, align 4
  %117 = call i64 @target_signal_to_host(i32 %116)
  %118 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %118, i64 %120
  %122 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %121, i32 0, i32 3
  store i64 %117, i64* %122, align 8
  br label %131

123:                                              ; preds = %94
  %124 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %124, i64 %126
  %128 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %7, align 8
  br label %131

131:                                              ; preds = %123, %115
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %138, i64 %140
  %142 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 8
  %143 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %143, i64 %145
  %147 = bitcast %struct.thread_resume* %12 to i8*
  %148 = bitcast %struct.thread_resume* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 24, i1 false)
  br label %187

149:                                              ; preds = %131
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 58
  br i1 %154, label %155, label %186

155:                                              ; preds = %149
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = call i8* @strtol(i8* %157, i8** %8, i32 16)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %160, i64 %162
  %164 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %163, i32 0, i32 0
  store i32 %159, i32* %164, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %155
  br label %227

169:                                              ; preds = %155
  %170 = load i8*, i8** %8, align 8
  store i8* %170, i8** %7, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 59
  br i1 %175, label %176, label %183

176:                                              ; preds = %169
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %227

183:                                              ; preds = %176, %169
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %186

186:                                              ; preds = %183, %149
  br label %187

187:                                              ; preds = %186, %137
  br label %39

188:                                              ; preds = %39
  %189 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %189, i64 %191
  %193 = bitcast %struct.thread_resume* %192 to i8*
  %194 = bitcast %struct.thread_resume* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 24, i1 false)
  %195 = load i32, i32* %9, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %208

197:                                              ; preds = %188
  %198 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %199 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %198, i64 0
  %200 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, -1
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %205 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %204, i64 0
  %206 = getelementptr inbounds %struct.thread_resume, %struct.thread_resume* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* @cont_thread, align 4
  br label %209

208:                                              ; preds = %197, %188
  store i32 -1, i32* @cont_thread, align 4
  br label %209

209:                                              ; preds = %208, %203
  %210 = call i32 @set_desired_inferior(i32 0)
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32 (%struct.thread_resume*)*, i32 (%struct.thread_resume*)** %212, align 8
  %214 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %215 = call i32 %213(%struct.thread_resume* %214)
  %216 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %217 = call i32 @free(%struct.thread_resume* %216)
  %218 = load i8*, i8** %5, align 8
  %219 = call zeroext i8 @mywait(i8* %218, i32 1)
  %220 = load i8*, i8** %6, align 8
  store i8 %219, i8* %220, align 1
  %221 = load i8*, i8** %4, align 8
  %222 = load i8*, i8** %5, align 8
  %223 = load i8, i8* %222, align 1
  %224 = load i8*, i8** %6, align 8
  %225 = load i8, i8* %224, align 1
  %226 = call i32 @prepare_resume_reply(i8* %221, i8 signext %223, i8 zeroext %225)
  br label %232

227:                                              ; preds = %182, %168, %114, %108, %86
  %228 = load i8*, i8** %4, align 8
  %229 = call i32 @strcpy(i8* %228, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %230 = load %struct.thread_resume*, %struct.thread_resume** %11, align 8
  %231 = call i32 @free(%struct.thread_resume* %230)
  br label %232

232:                                              ; preds = %227, %209
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.thread_resume* @malloc(i32) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @target_signal_to_host_p(i32) #1

declare dso_local i64 @target_signal_to_host(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_desired_inferior(i32) #1

declare dso_local i32 @free(%struct.thread_resume*) #1

declare dso_local zeroext i8 @mywait(i8*, i32) #1

declare dso_local i32 @prepare_resume_reply(i8*, i8 signext, i8 zeroext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
