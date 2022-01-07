; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_chaos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_chaos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.config_file* }
%struct.config_file = type { i64*, i64*, i64, i64, i64 }
%struct.query_info = type { i64, i32 }
%struct.edns_data = type { i32 }
%struct.comm_reply = type { i32 }

@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_TXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"\02id\06server\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\08hostname\04bind\00", align 1
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"gethostname: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"no hostname\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\07version\06server\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\07version\04bind\00", align 1
@PACKAGE_STRING = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"\0Btrustanchor\07unbound\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker*, %struct.query_info*, %struct.edns_data*, %struct.comm_reply*, i32*)* @answer_chaos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @answer_chaos(%struct.worker* %0, %struct.query_info* %1, %struct.edns_data* %2, %struct.comm_reply* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.worker*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.edns_data*, align 8
  %10 = alloca %struct.comm_reply*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.config_file*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.worker* %0, %struct.worker** %7, align 8
  store %struct.query_info* %1, %struct.query_info** %8, align 8
  store %struct.edns_data* %2, %struct.edns_data** %9, align 8
  store %struct.comm_reply* %3, %struct.comm_reply** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.worker*, %struct.worker** %7, align 8
  %16 = getelementptr inbounds %struct.worker, %struct.worker* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.config_file*, %struct.config_file** %17, align 8
  store %struct.config_file* %18, %struct.config_file** %12, align 8
  %19 = load %struct.query_info*, %struct.query_info** %8, align 8
  %20 = getelementptr inbounds %struct.query_info, %struct.query_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.query_info*, %struct.query_info** %8, align 8
  %26 = getelementptr inbounds %struct.query_info, %struct.query_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_TXT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %168

31:                                               ; preds = %24, %5
  %32 = load %struct.query_info*, %struct.query_info** %8, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @query_dname_compare(i32 %34, i32* bitcast ([11 x i8]* @.str to i32*))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.query_info*, %struct.query_info** %8, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @query_dname_compare(i32 %40, i32* bitcast ([15 x i8]* @.str.1 to i32*))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %101

43:                                               ; preds = %37, %31
  %44 = load %struct.config_file*, %struct.config_file** %12, align 8
  %45 = getelementptr inbounds %struct.config_file, %struct.config_file* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %168

49:                                               ; preds = %43
  %50 = load %struct.config_file*, %struct.config_file** %12, align 8
  %51 = getelementptr inbounds %struct.config_file, %struct.config_file* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.config_file*, %struct.config_file** %12, align 8
  %56 = getelementptr inbounds %struct.config_file, %struct.config_file* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %54, %49
  %62 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %63 = add nsw i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %13, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %14, align 8
  %67 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %68 = call i64 @gethostname(i8* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %66, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %76 = load %struct.worker*, %struct.worker** %7, align 8
  %77 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %78 = call i32 @chaos_replyonestr(i32* %74, i8* %66, %struct.edns_data* %75, %struct.worker* %76, %struct.comm_reply* %77)
  br label %88

79:                                               ; preds = %61
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %85 = load %struct.worker*, %struct.worker** %7, align 8
  %86 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %87 = call i32 @chaos_replyonestr(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.edns_data* %84, %struct.worker* %85, %struct.comm_reply* %86)
  br label %88

88:                                               ; preds = %79, %70
  %89 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %89)
  br label %100

90:                                               ; preds = %54
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.config_file*, %struct.config_file** %12, align 8
  %93 = getelementptr inbounds %struct.config_file, %struct.config_file* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = bitcast i64* %94 to i8*
  %96 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %97 = load %struct.worker*, %struct.worker** %7, align 8
  %98 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %99 = call i32 @chaos_replyonestr(i32* %91, i8* %95, %struct.edns_data* %96, %struct.worker* %97, %struct.comm_reply* %98)
  br label %100

100:                                              ; preds = %90, %88
  store i32 1, i32* %6, align 4
  br label %168

101:                                              ; preds = %37
  %102 = load %struct.query_info*, %struct.query_info** %8, align 8
  %103 = getelementptr inbounds %struct.query_info, %struct.query_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @query_dname_compare(i32 %104, i32* bitcast ([16 x i8]* @.str.4 to i32*))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.query_info*, %struct.query_info** %8, align 8
  %109 = getelementptr inbounds %struct.query_info, %struct.query_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @query_dname_compare(i32 %110, i32* bitcast ([14 x i8]* @.str.5 to i32*))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %107, %101
  %114 = load %struct.config_file*, %struct.config_file** %12, align 8
  %115 = getelementptr inbounds %struct.config_file, %struct.config_file* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %168

119:                                              ; preds = %113
  %120 = load %struct.config_file*, %struct.config_file** %12, align 8
  %121 = getelementptr inbounds %struct.config_file, %struct.config_file* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = icmp eq i64* %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load %struct.config_file*, %struct.config_file** %12, align 8
  %126 = getelementptr inbounds %struct.config_file, %struct.config_file* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124, %119
  %132 = load i32*, i32** %11, align 8
  %133 = load i8*, i8** @PACKAGE_STRING, align 8
  %134 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %135 = load %struct.worker*, %struct.worker** %7, align 8
  %136 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %137 = call i32 @chaos_replyonestr(i32* %132, i8* %133, %struct.edns_data* %134, %struct.worker* %135, %struct.comm_reply* %136)
  br label %148

138:                                              ; preds = %124
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.config_file*, %struct.config_file** %12, align 8
  %141 = getelementptr inbounds %struct.config_file, %struct.config_file* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = bitcast i64* %142 to i8*
  %144 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %145 = load %struct.worker*, %struct.worker** %7, align 8
  %146 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %147 = call i32 @chaos_replyonestr(i32* %139, i8* %143, %struct.edns_data* %144, %struct.worker* %145, %struct.comm_reply* %146)
  br label %148

148:                                              ; preds = %138, %131
  store i32 1, i32* %6, align 4
  br label %168

149:                                              ; preds = %107
  %150 = load %struct.query_info*, %struct.query_info** %8, align 8
  %151 = getelementptr inbounds %struct.query_info, %struct.query_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @query_dname_compare(i32 %152, i32* bitcast ([21 x i8]* @.str.6 to i32*))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.config_file*, %struct.config_file** %12, align 8
  %157 = getelementptr inbounds %struct.config_file, %struct.config_file* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %168

161:                                              ; preds = %155
  %162 = load i32*, i32** %11, align 8
  %163 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %164 = load %struct.worker*, %struct.worker** %7, align 8
  %165 = load %struct.comm_reply*, %struct.comm_reply** %10, align 8
  %166 = call i32 @chaos_trustanchor(i32* %162, %struct.edns_data* %163, %struct.worker* %164, %struct.comm_reply* %165)
  store i32 1, i32* %6, align 4
  br label %168

167:                                              ; preds = %149
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %161, %160, %148, %118, %100, %48, %30
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i64 @query_dname_compare(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i32 @chaos_replyonestr(i32*, i8*, %struct.edns_data*, %struct.worker*, %struct.comm_reply*) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @chaos_trustanchor(i32*, %struct.edns_data*, %struct.worker*, %struct.comm_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
