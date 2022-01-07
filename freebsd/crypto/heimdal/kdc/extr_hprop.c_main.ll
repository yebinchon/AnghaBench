; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i32, %struct.TYPE_7__*, i32, i32)*, i32 (i32, %struct.TYPE_7__*)* }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"krb5_allow_weak_crypto\00", align 1
@local_realm = common dso_local global i64 0, align 8
@encrypt_flag = common dso_local global i64 0, align 8
@decrypt_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"only one of `--encrypt' and `--decrypt' is meaningful\00", align 1
@source_type = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown source type `%s'\00", align 1
@to_stdout = common dso_local global i64 0, align 8
@mkeyfile = common dso_local global i32 0, align 4
@mkey5 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"hdb_read_master_key\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No master key file found\00", align 1
@database = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"no dump file specified\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"hdb_create: %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"db->hdb_open\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"unknown dump type `%d'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @setprogname(i8* %15)
  %17 = load i32, i32* @args, align 4
  %18 = load i32, i32* @num_args, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i64 @getarg(i32 %17, i32 %18, i32 %19, i8** %20, i32* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @usage(i32 1)
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i64, i64* @help_flag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @usage(i32 0)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i64, i64* @version_flag, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 @print_version(i32* null)
  %35 = call i32 @exit(i32 0) #3
  unreachable

36:                                               ; preds = %30
  %37 = call i64 @krb5_init_context(i32* %7)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @krb5_allow_weak_crypto(i32 %43, i32 1)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %48, i32 1, i64 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i64, i64* @local_realm, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* @local_realm, align 8
  %57 = call i32 @krb5_set_default_realm(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i64, i64* @encrypt_flag, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* @decrypt_flag, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %65, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61, %58
  %68 = load i32*, i32** @source_type, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32*, i32** @source_type, align 8
  %72 = call i32 @parse_source_type(i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** @source_type, align 8
  %78 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %76, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %77)
  br label %79

79:                                               ; preds = %75, %70
  br label %81

80:                                               ; preds = %67
  store i32 129, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i64, i64* @to_stdout, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @get_creds(i32 %85, i32** %8)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* @decrypt_flag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* @encrypt_flag, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @mkeyfile, align 4
  %96 = call i64 @hdb_read_master_key(i32 %94, i32 %95, i32* @mkey5)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @ENOENT, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %104, i32 1, i64 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %99, %93
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %111, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %11, align 4
  switch i32 %115, label %149 [
    i32 128, label %116
    i32 129, label %123
  ]

116:                                              ; preds = %114
  %117 = load i32*, i32** @database, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %120, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  br label %153

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  %125 = load i32*, i32** @database, align 8
  %126 = call i64 @hdb_create(i32 %124, %struct.TYPE_7__** %9, i32* %125)
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = load i64, i64* %6, align 8
  %132 = load i32*, i32** @database, align 8
  %133 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %130, i32 1, i64 %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %132)
  br label %134

134:                                              ; preds = %129, %123
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64 (i32, %struct.TYPE_7__*, i32, i32)*, i64 (i32, %struct.TYPE_7__*, i32, i32)** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %140 = load i32, i32* @O_RDONLY, align 4
  %141 = call i64 %137(i32 %138, %struct.TYPE_7__* %139, i32 %140, i32 0)
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = load i64, i64* %6, align 8
  %147 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %145, i32 1, i64 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %134
  br label %153

149:                                              ; preds = %114
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %150, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %148, %122
  %154 = load i64, i64* @to_stdout, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32*, i32** @database, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %161 = call i32 @dump_database(i32 %157, i32 %158, i32* %159, %struct.TYPE_7__* %160)
  store i32 %161, i32* %12, align 4
  br label %172

162:                                              ; preds = %153
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32*, i32** @database, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %4, align 4
  %170 = load i8**, i8*** %5, align 8
  %171 = call i32 @propagate_database(i32 %163, i32 %164, i32* %165, %struct.TYPE_7__* %166, i32* %167, i32 %168, i32 %169, i8** %170)
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %162, %156
  %173 = load i32*, i32** %8, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @krb5_cc_destroy(i32 %176, i32* %177)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %181 = icmp ne %struct.TYPE_7__* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %188 = call i32 %185(i32 %186, %struct.TYPE_7__* %187)
  br label %189

189:                                              ; preds = %182, %179
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @krb5_free_context(i32 %190)
  %192 = load i32, i32* %12, align 4
  ret i32 %192
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i64 @krb5_allow_weak_crypto(i32, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @krb5_set_default_realm(i32, i64) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @parse_source_type(i32*) #1

declare dso_local i32 @get_creds(i32, i32**) #1

declare dso_local i64 @hdb_read_master_key(i32, i32, i32*) #1

declare dso_local i64 @hdb_create(i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @dump_database(i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @propagate_database(i32, i32, i32*, %struct.TYPE_7__*, i32*, i32, i32, i8**) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
