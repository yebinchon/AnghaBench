; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c__hdb_fetch_kvno.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_common.c__hdb_fetch_kvno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 (i32, %struct.TYPE_25__*, i32, i32*)*, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }

@KRB5_NT_ENTERPRISE_PRINCIPAL = common dso_local global i64 0, align 8
@KRB5_PARSE_MALFORMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"malformed principal: enterprise name with %d name components\00", align 1
@ASN1_BAD_ID = common dso_local global i32 0, align 4
@HDB_F_CANON = common dso_local global i32 0, align 4
@HDB_ERR_NOENTRY = common dso_local global i32 0, align 4
@HDB_F_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hdb_fetch_kvno(i32 %0, %struct.TYPE_25__* %1, %struct.TYPE_22__* %2, i32 %3, i32 %4, %struct.TYPE_23__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KRB5_NT_ENTERPRISE_PRINCIPAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %6
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32, i32* @KRB5_PARSE_MALFORMED, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @krb5_set_error_message(i32 %35, i32 %36, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %7, align 4
  br label %168

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @krb5_parse_name(i32 %45, i32 %52, %struct.TYPE_22__** %14)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %168

58:                                               ; preds = %44
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %10, align 8
  br label %60

60:                                               ; preds = %58, %6
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %63 = call i32 @hdb_principal2key(i32 %61, %struct.TYPE_22__* %62, i32* %15)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %65 = icmp ne %struct.TYPE_22__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %69 = call i32 @krb5_free_principal(i32 %67, %struct.TYPE_22__* %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32 (i32, %struct.TYPE_25__*, i32, i32*)*, i32 (i32, %struct.TYPE_25__*, i32, i32*)** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 %73(i32 %74, %struct.TYPE_25__* %75, i32 %76, i32* %16)
  store i32 %77, i32* %18, align 4
  %78 = call i32 @krb5_data_free(i32* %15)
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %18, align 4
  store i32 %82, i32* %7, align 4
  br label %168

83:                                               ; preds = %70
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = call i32 @hdb_value2entry(i32 %84, i32* %16, i32* %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @ASN1_BAD_ID, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @HDB_F_CANON, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = call i32 @krb5_data_free(i32* %16)
  %98 = load i32, i32* @HDB_ERR_NOENTRY, align 4
  store i32 %98, i32* %7, align 4
  br label %168

99:                                               ; preds = %91, %83
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @ASN1_BAD_ID, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %141

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @hdb_value2entry_alias(i32 %104, i32* %16, %struct.TYPE_24__* %19)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = call i32 @krb5_data_free(i32* %16)
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %7, align 4
  br label %168

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = call i32 @hdb_principal2key(i32 %112, %struct.TYPE_22__* %114, i32* %15)
  %116 = call i32 @krb5_data_free(i32* %16)
  %117 = call i32 @free_hdb_entry_alias(%struct.TYPE_24__* %19)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32 (i32, %struct.TYPE_25__*, i32, i32*)*, i32 (i32, %struct.TYPE_25__*, i32, i32*)** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 %120(i32 %121, %struct.TYPE_25__* %122, i32 %123, i32* %16)
  store i32 %124, i32* %18, align 4
  %125 = call i32 @krb5_data_free(i32* %15)
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %111
  %129 = load i32, i32* %18, align 4
  store i32 %129, i32* %7, align 4
  br label %168

130:                                              ; preds = %111
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = call i32 @hdb_value2entry(i32 %131, i32* %16, i32* %133)
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = call i32 @krb5_data_free(i32* %16)
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %7, align 4
  br label %168

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %99
  br label %142

142:                                              ; preds = %141
  %143 = call i32 @krb5_data_free(i32* %16)
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %142
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @HDB_F_DECRYPT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = call i32 @hdb_unseal_keys(i32 %154, %struct.TYPE_25__* %155, i32* %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %164 = call i32 @hdb_free_entry(i32 %162, %struct.TYPE_23__* %163)
  br label %165

165:                                              ; preds = %161, %153
  br label %166

166:                                              ; preds = %165, %148, %142
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %166, %137, %128, %108, %96, %81, %56, %33
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_parse_name(i32, i32, %struct.TYPE_22__**) #1

declare dso_local i32 @hdb_principal2key(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @hdb_value2entry(i32, i32*, i32*) #1

declare dso_local i32 @hdb_value2entry_alias(i32, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @free_hdb_entry_alias(%struct.TYPE_24__*) #1

declare dso_local i32 @hdb_unseal_keys(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
