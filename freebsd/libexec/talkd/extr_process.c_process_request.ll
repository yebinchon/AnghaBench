; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/talkd/extr_process.c_process_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/talkd/extr_process.c_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i8*, i8*, %struct.TYPE_18__, i8*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, i8*, %struct.TYPE_18__, i8*, i64 }

@TALK_VERSION = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"bad protocol version %d\00", align 1
@BADVERSION = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"bad address, family %d\00", align 1
@BADADDR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"bad control address, family %d\00", align 1
@BADCTLADDR = common dso_local global i8* null, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"illegal user name. Aborting\00", align 1
@FAILED = common dso_local global i8* null, align 8
@debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"process_request\00", align 1
@SUCCESS = common dso_local global i8* null, align 8
@NOT_HERE = common dso_local global i8* null, align 8
@UNKNOWN_REQUEST = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_request(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %7 = load i64, i64* @TALK_VERSION, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  store i64 %7, i64* %9, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = call i8* @htonl(i8* null)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TALK_VERSION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @LOG_WARNING, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32, i8*, ...) @syslog(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i8*, i8** @BADVERSION, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %204

32:                                               ; preds = %2
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @ntohl(i8* %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @ntohs(i64 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %32
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @syslog(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i8*, i8** @BADADDR, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %204

64:                                               ; preds = %32
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @ntohs(i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AF_INET, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %64
  %81 = load i32, i32* @LOG_WARNING, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i8*, ...) @syslog(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load i8*, i8** @BADCTLADDR, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %204

90:                                               ; preds = %64
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %6, align 8
  br label %94

94:                                               ; preds = %110, %90
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @isprint(i8 signext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @LOG_NOTICE, align 4
  %105 = call i32 (i32, i8*, ...) @syslog(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i8*, i8** @FAILED, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %204

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  br label %94

113:                                              ; preds = %94
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @ntohl(i8* %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* @debug, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = call i32 @print_request(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_20__* %123)
  br label %125

125:                                              ; preds = %122, %113
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %194 [
    i32 131, label %129
    i32 129, label %133
    i32 128, label %153
    i32 130, label %187
  ]

129:                                              ; preds = %125
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = call i32 @do_announce(%struct.TYPE_20__* %130, %struct.TYPE_19__* %131)
  br label %198

133:                                              ; preds = %125
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = call %struct.TYPE_20__* @find_request(%struct.TYPE_20__* %134)
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %5, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = icmp ne %struct.TYPE_20__* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @htonl(i8* %141)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @SUCCESS, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  br label %152

148:                                              ; preds = %133
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %151 = call i32 @insert_table(%struct.TYPE_20__* %149, %struct.TYPE_19__* %150)
  br label %152

152:                                              ; preds = %148, %138
  br label %198

153:                                              ; preds = %125
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %155 = call %struct.TYPE_20__* @find_match(%struct.TYPE_20__* %154)
  store %struct.TYPE_20__* %155, %struct.TYPE_20__** %5, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = icmp ne %struct.TYPE_20__* %156, null
  br i1 %157, label %158, label %182

158:                                              ; preds = %153
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @htonl(i8* %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 4
  %169 = bitcast %struct.TYPE_18__* %166 to i8*
  %170 = bitcast %struct.TYPE_18__* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 8, i1 false)
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @htons(i64 %174)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  store i64 %175, i64* %178, align 8
  %179 = load i8*, i8** @SUCCESS, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %186

182:                                              ; preds = %153
  %183 = load i8*, i8** @NOT_HERE, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %182, %158
  br label %198

187:                                              ; preds = %125
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @delete_invite(i8* %190)
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  br label %198

194:                                              ; preds = %125
  %195 = load i8*, i8** @UNKNOWN_REQUEST, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %194, %187, %186, %152, %129
  %199 = load i64, i64* @debug, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = call i32 @print_response(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_19__* %202)
  br label %204

204:                                              ; preds = %23, %54, %80, %103, %201, %198
  ret void
}

declare dso_local i8* @htonl(i8*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i8* @ntohs(i64) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @print_request(i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @do_announce(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @find_request(%struct.TYPE_20__*) #1

declare dso_local i32 @insert_table(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @find_match(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @htons(i64) #1

declare dso_local i8* @delete_invite(i8*) #1

declare dso_local i32 @print_response(i8*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
