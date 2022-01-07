; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_context_s.c_find_db_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_context_s.c_find_db_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i64 }
%struct.hdb_dbinfo = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s/kadmind.acl\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/m-key\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s/log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @find_db_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_db_spec(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdb_dbinfo*, align 8
  %6 = alloca %struct.hdb_dbinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %101

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @hdb_get_dbinfo(i32 %18, %struct.hdb_dbinfo** %5)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %2, align 8
  br label %160

24:                                               ; preds = %17
  store %struct.hdb_dbinfo* null, %struct.hdb_dbinfo** %6, align 8
  br label %25

25:                                               ; preds = %44, %24
  %26 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %5, align 8
  %27 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %28 = call %struct.hdb_dbinfo* @hdb_dbinfo_get_next(%struct.hdb_dbinfo* %26, %struct.hdb_dbinfo* %27)
  store %struct.hdb_dbinfo* %28, %struct.hdb_dbinfo** %6, align 8
  %29 = icmp ne %struct.hdb_dbinfo* %28, null
  br i1 %29, label %30, label %98

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %33 = call i8* @hdb_dbinfo_get_realm(i32 %31, %struct.hdb_dbinfo* %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strcmp(i64 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %25

45:                                               ; preds = %36, %30
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %48 = call i8* @hdb_dbinfo_get_dbname(i32 %46, %struct.hdb_dbinfo* %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @strdup(i8* %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32* %54, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %61 = call i8* @hdb_dbinfo_get_acl_file(i32 %59, %struct.hdb_dbinfo* %60)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @strdup(i8* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32* %67, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %74 = call i8* @hdb_dbinfo_get_mkey_file(i32 %72, %struct.hdb_dbinfo* %73)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i8*, i8** %8, align 8
  %79 = call i8* @strdup(i8* %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %71
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %87 = call i8* @hdb_dbinfo_get_log_file(i32 %85, %struct.hdb_dbinfo* %86)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i8*, i8** %8, align 8
  %92 = call i8* @strdup(i8* %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32* %93, i32** %96, align 8
  br label %97

97:                                               ; preds = %90, %84
  br label %98

98:                                               ; preds = %97, %25
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @hdb_free_dbinfo(i32 %99, %struct.hdb_dbinfo** %5)
  br label %101

101:                                              ; preds = %98, %1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = call i8* @hdb_default_db(i32 %108)
  %110 = call i8* @strdup(i8* %109)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i32* %111, i32** %114, align 8
  br label %115

115:                                              ; preds = %107, %101
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @hdb_db_dir(i32 %125)
  %127 = call i32 @asprintf(i32** %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @hdb_db_dir(i32 %138)
  %140 = call i32 @asprintf(i32** %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @hdb_db_dir(i32 %151)
  %153 = call i32 @asprintf(i32** %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %147, %141
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = call i32 @set_socket_name(i32 %155, i32* %158)
  store i64 0, i64* %2, align 8
  br label %160

160:                                              ; preds = %154, %22
  %161 = load i64, i64* %2, align 8
  ret i64 %161
}

declare dso_local i64 @hdb_get_dbinfo(i32, %struct.hdb_dbinfo**) #1

declare dso_local %struct.hdb_dbinfo* @hdb_dbinfo_get_next(%struct.hdb_dbinfo*, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_realm(i32, %struct.hdb_dbinfo*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @hdb_dbinfo_get_dbname(i32, %struct.hdb_dbinfo*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @hdb_dbinfo_get_acl_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_mkey_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_log_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @hdb_free_dbinfo(i32, %struct.hdb_dbinfo**) #1

declare dso_local i8* @hdb_default_db(i32) #1

declare dso_local i32 @asprintf(i32**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @set_socket_name(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
