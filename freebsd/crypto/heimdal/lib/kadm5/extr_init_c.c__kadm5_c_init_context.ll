; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c__kadm5_c_init_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c__kadm5_c_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, i64 }

@ENOMEM = common dso_local global i64 0, align 8
@initialize_kadm5_error_table_r = common dso_local global i32 0, align 4
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KADM5_CONFIG_ADMIN_SERVER = common dso_local global i32 0, align 4
@KADM5_CONFIG_KADMIND_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kerberos-adm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_c_init_context(%struct.TYPE_12__** %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.TYPE_12__* @malloc(i32 32)
  %13 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %13, align 8
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @ENOMEM, align 8
  store i64 %18, i64* %4, align 8
  br label %186

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call i32 @memset(%struct.TYPE_12__* %21, i32 0, i32 32)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @initialize_kadm5_error_table_r, align 4
  %25 = call i32 @krb5_add_et_list(i32 %23, i32 %24)
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = call i32 @set_funcs(%struct.TYPE_12__* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = bitcast i8* %43 to %struct.TYPE_12__*
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %47, align 8
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = icmp eq %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i64, i64* @ENOMEM, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %39
  br label %65

56:                                               ; preds = %19
  %57 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = call i64 @krb5_get_default_realm(i32 %60, %struct.TYPE_12__** %63)
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %56, %55
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_12__* %70)
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %4, align 8
  br label %186

73:                                               ; preds = %65
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @KADM5_CONFIG_ADMIN_SERVER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @strdup(i8* %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32* %85, i32** %88, align 8
  br label %118

89:                                               ; preds = %73
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = call i64 @krb5_get_krb_admin_hst(i32 %90, %struct.TYPE_12__** %93, i8*** %10)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = call i32 @free(%struct.TYPE_12__* %101)
  %103 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = call i32 @free(%struct.TYPE_12__* %104)
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %4, align 8
  br label %186

107:                                              ; preds = %89
  %108 = load i8**, i8*** %10, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @strdup(i8* %109)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  store i32* %111, i32** %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i8**, i8*** %10, align 8
  %117 = call i32 @krb5_free_krbhst(i32 %115, i8** %116)
  br label %118

118:                                              ; preds = %107, %80
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = call i32 @free(%struct.TYPE_12__* %128)
  %130 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = call i32 @free(%struct.TYPE_12__* %131)
  %133 = load i64, i64* @ENOMEM, align 8
  store i64 %133, i64* %4, align 8
  br label %186

134:                                              ; preds = %118
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i8* @strchr(i32* %138, i8 signext 58)
  store i8* %139, i8** %9, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %9, align 8
  store i8 0, i8* %143, align 1
  br label %145

145:                                              ; preds = %142, %134
  %146 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @KADM5_CONFIG_KADMIND_PORT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %145
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  br label %173

162:                                              ; preds = %145
  %163 = load i8*, i8** %9, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @strtol(i8* %166, i8** %11, i32 0)
  %168 = call i64 @htons(i32 %167)
  %169 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  br label %172

172:                                              ; preds = %165, %162
  br label %173

173:                                              ; preds = %172, %155
  %174 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* %7, align 4
  %181 = call i64 @krb5_getportbyname(i32 %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 749)
  %182 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %179, %173
  store i64 0, i64* %4, align 8
  br label %186

186:                                              ; preds = %185, %124, %97, %68, %17
  %187 = load i64, i64* %4, align 8
  ret i64 %187
}

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @krb5_add_et_list(i32, i32) #1

declare dso_local i32 @set_funcs(%struct.TYPE_12__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @krb5_get_default_realm(i32, %struct.TYPE_12__**) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i64 @krb5_get_krb_admin_hst(i32, %struct.TYPE_12__**, i8***) #1

declare dso_local i32 @krb5_free_krbhst(i32, i8**) #1

declare dso_local i8* @strchr(i32*, i8 signext) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @krb5_getportbyname(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
