; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_send_diffs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_send_diffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"slave %s in sync already at version %ld\00", align 1
@SLAVE_F_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"sending complete log to fresh slave %s\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"send_diffs: failed to find previous entry\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"slave %s (version %lu) out of sync with master (first version in log %lu), sending complete database\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"syncing slave %s from version %lu to version %lu\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"send_diffs: krb5_data_alloc\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"send_diffs: krb5_storage_from_data\00", align 1
@FOR_YOU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"send_diffs: krb5_write_priv_message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, i32, i8*, i64)* @send_diffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_diffs(i32 %0, %struct.TYPE_11__* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  store i32 0, i32* %6, align 4
  br label %190

35:                                               ; preds = %5
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SLAVE_F_DEAD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %190

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @send_complete(i32 %54, %struct.TYPE_11__* %55, i8* %56, i64 %57)
  store i32 %58, i32* %6, align 4
  br label %190

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  %61 = call i32* @kadm5_log_goto_end(i32 %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @SEEK_CUR, align 4
  %64 = call i64 @krb5_storage_seek(i32* %62, i32 0, i32 %63)
  store i64 %64, i64* %17, align 8
  br label %65

65:                                               ; preds = %113, %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @kadm5_log_previous(i32 %66, i32* %67, i64* %13, i32* %14, i32* %15, i64* %16)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %20, align 4
  %74 = call i32 @krb5_err(i32 %72, i32 1, i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @SEEK_CUR, align 4
  %78 = call i64 @krb5_storage_seek(i32* %76, i32 -16, i32 %77)
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %190

85:                                               ; preds = %75
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = icmp eq i64 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %114

93:                                               ; preds = %85
  %94 = load i64, i64* %18, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @krb5_storage_free(i32* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %99, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %102, i64 %105, i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @send_complete(i32 %108, %struct.TYPE_11__* %109, i8* %110, i64 %111)
  store i32 %112, i32* %6, align 4
  br label %190

113:                                              ; preds = %93
  br label %65

114:                                              ; preds = %92
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %118, i64 %121, i64 %122)
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %18, align 8
  %126 = sub nsw i64 %124, %125
  %127 = add nsw i64 %126, 4
  %128 = call i32 @krb5_data_alloc(%struct.TYPE_12__* %19, i64 %127)
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %114
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @krb5_storage_free(i32* %132)
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @krb5_warn(i32 %134, i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = call i32 @slave_dead(i32 %137, %struct.TYPE_11__* %138)
  store i32 1, i32* %6, align 4
  br label %190

140:                                              ; preds = %114
  %141 = load i32*, i32** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %147, 4
  %149 = call i32 @krb5_storage_read(i32* %141, i8* %145, i64 %148)
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @krb5_storage_free(i32* %150)
  %152 = call i32* @krb5_storage_from_data(%struct.TYPE_12__* %19)
  store i32* %152, i32** %12, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %140
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %160 = call i32 @slave_dead(i32 %158, %struct.TYPE_11__* %159)
  store i32 1, i32* %6, align 4
  br label %190

161:                                              ; preds = %140
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* @FOR_YOU, align 4
  %164 = call i32 @krb5_store_int32(i32* %162, i32 %163)
  %165 = load i32*, i32** %12, align 8
  %166 = call i32 @krb5_storage_free(i32* %165)
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = call i32 @krb5_write_priv_message(i32 %167, i32 %170, i32* %172, %struct.TYPE_12__* %19)
  store i32 %173, i32* %20, align 4
  %174 = call i32 @krb5_data_free(%struct.TYPE_12__* %19)
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %161
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %20, align 4
  %180 = call i32 @krb5_warn(i32 %178, i32 %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %183 = call i32 @slave_dead(i32 %181, %struct.TYPE_11__* %182)
  store i32 1, i32* %6, align 4
  br label %190

184:                                              ; preds = %161
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = call i32 @slave_seen(%struct.TYPE_11__* %185)
  %187 = load i64, i64* %11, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %184, %177, %155, %131, %96, %84, %48, %42, %26
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i32 @send_complete(i32, %struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32* @kadm5_log_goto_end(i32) #1

declare dso_local i64 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32 @kadm5_log_previous(i32, i32*, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_data_alloc(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32 @slave_dead(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @krb5_storage_read(i32*, i8*, i64) #1

declare dso_local i32* @krb5_storage_from_data(%struct.TYPE_12__*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_write_priv_message(i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_12__*) #1

declare dso_local i32 @slave_seen(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
