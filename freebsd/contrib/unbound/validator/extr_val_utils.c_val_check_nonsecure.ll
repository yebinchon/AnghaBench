; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_check_nonsecure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_check_nonsecure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.reply_info = type { i64, i64, i64, i64, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.packed_rrset_data = type { i64 }

@sec_status_secure = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"truncate to minimal\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"message is bogus, non secure rrset\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_check_nonsecure(%struct.module_env* %0, %struct.reply_info* %1) #0 {
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store %struct.reply_info* %1, %struct.reply_info** %4, align 8
  %6 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %7 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %132, %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %12 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = icmp ult i64 %10, %17
  br i1 %18, label %19, label %135

19:                                               ; preds = %9
  %20 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 4
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 %23
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.packed_rrset_data*
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @sec_status_secure, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %131

34:                                               ; preds = %19
  %35 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %34
  %40 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 4
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %42, i64 %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ntohs(i32 %48)
  %50 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %39
  %53 = load i32, i32* @VERB_ALGO, align 4
  %54 = call i32 @verbose(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %56 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %61 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  %64 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %65 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %67 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %68, i64 %69
  %71 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %72 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %71, i32 0, i32 4
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 1
  %77 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %78 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub i64 %79, %80
  %82 = sub i64 %81, 1
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memmove(%struct.TYPE_9__** %70, %struct.TYPE_9__** %76, i32 %84)
  %86 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %87 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %91 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %5, align 8
  br label %207

96:                                               ; preds = %39, %34
  %97 = load i32, i32* @VERB_QUERY, align 4
  %98 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %99 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %100, i64 %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %108 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %107, i32 0, i32 4
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @ntohs(i32 %115)
  %117 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %118 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %117, i32 0, i32 4
  %119 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %119, i64 %120
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @ntohs(i32 %125)
  %127 = call i32 @log_nametypeclass(i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %106, i64 %116, i64 %126)
  %128 = load i32, i32* @sec_status_bogus, align 4
  %129 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %130 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 8
  br label %207

131:                                              ; preds = %19
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %5, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %5, align 8
  br label %9

135:                                              ; preds = %9
  %136 = load %struct.module_env*, %struct.module_env** %3, align 8
  %137 = getelementptr inbounds %struct.module_env, %struct.module_env* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %207

143:                                              ; preds = %135
  %144 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %145 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %148 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %146, %149
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %204, %143
  %152 = load i64, i64* %5, align 8
  %153 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %154 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %207

157:                                              ; preds = %151
  %158 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %159 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %158, i32 0, i32 4
  %160 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %160, i64 %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to %struct.packed_rrset_data*
  %168 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @sec_status_secure, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %203

172:                                              ; preds = %157
  %173 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %174 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %173, i32 0, i32 4
  %175 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %174, align 8
  %176 = load i64, i64* %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %175, i64 %176
  %178 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %179 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %178, i32 0, i32 4
  %180 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %182, i64 1
  %184 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %185 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = sub i64 %186, %187
  %189 = sub i64 %188, 1
  %190 = mul i64 8, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32 @memmove(%struct.TYPE_9__** %177, %struct.TYPE_9__** %183, i32 %191)
  %193 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %194 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, -1
  store i64 %196, i64* %194, align 8
  %197 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %198 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %199, -1
  store i64 %200, i64* %198, align 8
  %201 = load i64, i64* %5, align 8
  %202 = add i64 %201, -1
  store i64 %202, i64* %5, align 8
  br label %203

203:                                              ; preds = %172, %157
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %5, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %5, align 8
  br label %151

207:                                              ; preds = %52, %96, %142, %151
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @memmove(%struct.TYPE_9__**, %struct.TYPE_9__**, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
