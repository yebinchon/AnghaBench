; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_check_dlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_val_nsec_check_dlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i64, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DLV = common dso_local global i32 0, align 4
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"topdomain on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_nsec_check_dlv(%struct.query_info* %0, %struct.reply_info* %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.reply_info*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.query_info* %0, %struct.query_info** %6, align 8
  store %struct.reply_info* %1, %struct.reply_info** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %196

19:                                               ; preds = %4
  %20 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @FLAGS_GET_RCODE(i32 %22)
  %24 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %116

26:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %112, %26
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %30 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %115

33:                                               ; preds = %27
  %34 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @htons(i32 %42)
  %44 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %33
  %47 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %48 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %49, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @nsec_get_next(%struct.TYPE_7__* %52, i32** %10, i64* %12)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46, %33
  br label %112

56:                                               ; preds = %46
  %57 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.query_info*, %struct.query_info** %6, align 8
  %67 = getelementptr inbounds %struct.query_info, %struct.query_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dname_canonical_compare(i32 %65, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %56
  %73 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %74 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* @LDNS_RR_TYPE_DLV, align 4
  %80 = call i64 @nsec_has_type(%struct.TYPE_7__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %196

83:                                               ; preds = %72
  %84 = load i32**, i32*** %8, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = call i32 @dname_remove_label(i32** %84, i64* %85)
  store i32 1, i32* %5, align 4
  br label %196

87:                                               ; preds = %56
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.query_info*, %struct.query_info** %6, align 8
  %93 = getelementptr inbounds %struct.query_info, %struct.query_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @dname_strict_subdomain_c(i32* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %99 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %100, i64 %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load %struct.query_info*, %struct.query_info** %6, align 8
  %105 = getelementptr inbounds %struct.query_info, %struct.query_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32**, i32*** %8, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = call i32 @dlv_topdomain(%struct.TYPE_7__* %103, i32 %106, i32** %107, i64* %108)
  store i32 1, i32* %5, align 4
  br label %196

110:                                              ; preds = %90, %87
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %27

115:                                              ; preds = %27
  store i32 0, i32* %5, align 4
  br label %196

116:                                              ; preds = %19
  %117 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %118 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @FLAGS_GET_RCODE(i32 %119)
  %121 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %195

123:                                              ; preds = %116
  store i64 0, i64* %11, align 8
  br label %124

124:                                              ; preds = %191, %123
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %127 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %194

130:                                              ; preds = %124
  %131 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %132 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %133, i64 %134
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @htons(i32 %139)
  %141 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %191

144:                                              ; preds = %130
  %145 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %146 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %145, i32 0, i32 2
  %147 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %147, i64 %148
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load %struct.query_info*, %struct.query_info** %6, align 8
  %152 = getelementptr inbounds %struct.query_info, %struct.query_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @val_nsec_proves_name_error(%struct.TYPE_7__* %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %190

156:                                              ; preds = %144
  %157 = load i32, i32* @VERB_ALGO, align 4
  %158 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %159 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %158, i32 0, i32 2
  %160 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %160, i64 %161
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %168 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %167, i32 0, i32 2
  %169 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %169, i64 %170
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ntohs(i32 %175)
  %177 = call i32 @log_nametypeclass(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %166, i32 %176, i32 0)
  %178 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %179 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %180, i64 %181
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load %struct.query_info*, %struct.query_info** %6, align 8
  %185 = getelementptr inbounds %struct.query_info, %struct.query_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32**, i32*** %8, align 8
  %188 = load i64*, i64** %9, align 8
  %189 = call i32 @dlv_topdomain(%struct.TYPE_7__* %183, i32 %186, i32** %187, i64* %188)
  store i32 1, i32* %5, align 4
  br label %196

190:                                              ; preds = %144
  br label %191

191:                                              ; preds = %190, %143
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %11, align 8
  br label %124

194:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %196

195:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %194, %156, %115, %97, %83, %82, %18
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @nsec_get_next(%struct.TYPE_7__*, i32**, i64*) #1

declare dso_local i32 @dname_canonical_compare(i32, i32) #1

declare dso_local i64 @nsec_has_type(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i64 @dname_strict_subdomain_c(i32*, i32) #1

declare dso_local i32 @dlv_topdomain(%struct.TYPE_7__*, i32, i32**, i64*) #1

declare dso_local i64 @val_nsec_proves_name_error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
