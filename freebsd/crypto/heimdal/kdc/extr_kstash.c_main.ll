; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kstash.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kstash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32* }

@context = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@master_key_fd = common dso_local global i32 0, align 4
@random_key_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"random-key and master-key-fd is mutual exclusive\00", align 1
@keyfile = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/m-key\00", align 1
@enctype_str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"krb5_string_to_enctype\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"reading master key from %s\00", align 1
@convert_flag = common dso_local global i64 0, align 8
@KRB5_PW_SALT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"krb5_generate_random_keyblock\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to read passphrase\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Master key: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s.new\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"writing key to `%s'\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"writing master key file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* @args, align 4
  %18 = load i32, i32* @num_args, align 4
  %19 = call i32 @krb5_program_setup(i32* @context, i32 %15, i8** %16, i32 %17, i32 %18, i32* null)
  %20 = load i64, i64* @help_flag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @args, align 4
  %24 = load i32, i32* @num_args, align 4
  %25 = call i32 @krb5_std_usage(i32 0, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i64, i64* @version_flag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @print_version(i32* null)
  %31 = call i32 @exit(i32 0) #3
  unreachable

32:                                               ; preds = %26
  %33 = load i32, i32* @master_key_fd, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* @random_key_flag, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @context, align 4
  %40 = call i32 @krb5_errx(i32 %39, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35, %32
  %42 = load i8*, i8** @keyfile, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @context, align 4
  %46 = call i8* @hdb_db_dir(i32 %45)
  %47 = call i32 @asprintf(i8** @keyfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @context, align 4
  %50 = load i32, i32* @enctype_str, align 4
  %51 = call i64 @krb5_string_to_enctype(i32 %49, i32 %50, i32* %8)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @context, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %55, i32 1, i64 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* @context, align 4
  %60 = load i8*, i8** @keyfile, align 8
  %61 = call i64 @hdb_read_master_key(i32 %59, i8* %60, i32* %9)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @ENOENT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @context, align 4
  %70 = load i64, i64* %7, align 8
  %71 = load i8*, i8** @keyfile, align 8
  %72 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %69, i32 1, i64 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %64, %58
  %74 = load i64, i64* @convert_flag, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @context, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load i8*, i8** @keyfile, align 8
  %83 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %80, i32 1, i64 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %79, %76
  br label %141

85:                                               ; preds = %73
  %86 = load i32, i32* @KRB5_PW_SALT, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* @random_key_flag, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %85
  %95 = load i32, i32* @context, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @krb5_generate_random_keyblock(i32 %95, i32 %96, i32* %10)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @context, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %101, i32 1, i64 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94
  br label %136

105:                                              ; preds = %85
  %106 = load i32, i32* @master_key_fd, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i32, i32* @master_key_fd, align 4
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %111 = call i64 @read(i32 %109, i8* %110, i32 1024)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp ule i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @context, align 4
  %116 = load i64, i64* @errno, align 8
  %117 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %115, i32 1, i64 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %122 = call i64 @strcspn(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %122
  store i8 0, i8* %123, align 1
  br label %131

124:                                              ; preds = %105
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %126 = call i64 @UI_UTIL_read_pw_string(i8* %125, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 @exit(i32 1) #3
  unreachable

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i32, i32* @context, align 4
  %133 = load i32, i32* %8, align 4
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %135 = call i32 @krb5_string_to_key_salt(i32 %132, i32 %133, i8* %134, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %11, i32* %10)
  br label %136

136:                                              ; preds = %131, %104
  %137 = load i32, i32* @context, align 4
  %138 = call i64 @hdb_add_master_key(i32 %137, i32* %10, i32* %9)
  store i64 %138, i64* %7, align 8
  %139 = load i32, i32* @context, align 4
  %140 = call i32 @krb5_free_keyblock_contents(i32 %139, i32* %10)
  br label %141

141:                                              ; preds = %136, %84
  %142 = load i8*, i8** @keyfile, align 8
  %143 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %142)
  %144 = load i8*, i8** @keyfile, align 8
  %145 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %144)
  %146 = load i8*, i8** %13, align 8
  %147 = call i64 @unlink(i8* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %141
  %150 = load i64, i64* @errno, align 8
  %151 = load i64, i64* @ENOENT, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i64, i64* @errno, align 8
  store i64 %154, i64* %7, align 8
  br label %193

155:                                              ; preds = %149, %141
  %156 = load i32, i32* @context, align 4
  %157 = load i8*, i8** @keyfile, align 8
  %158 = call i32 @krb5_warnx(i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* @context, align 4
  %160 = load i8*, i8** %13, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @hdb_write_master_key(i32 %159, i8* %160, i32 %161)
  store i64 %162, i64* %7, align 8
  %163 = load i64, i64* %7, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %155
  %166 = load i8*, i8** %13, align 8
  %167 = call i64 @unlink(i8* %166)
  br label %192

168:                                              ; preds = %155
  %169 = load i8*, i8** %14, align 8
  %170 = call i64 @unlink(i8* %169)
  %171 = load i8*, i8** @keyfile, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = call i64 @link(i8* %171, i8* %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %168
  %176 = load i64, i64* @errno, align 8
  %177 = load i64, i64* @ENOENT, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i64, i64* @errno, align 8
  store i64 %180, i64* %7, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = call i64 @unlink(i8* %181)
  br label %191

183:                                              ; preds = %175, %168
  %184 = load i8*, i8** %13, align 8
  %185 = load i8*, i8** @keyfile, align 8
  %186 = call i64 @rename(i8* %184, i8* %185)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* @errno, align 8
  store i64 %189, i64* %7, align 8
  br label %190

190:                                              ; preds = %188, %183
  br label %191

191:                                              ; preds = %190, %179
  br label %192

192:                                              ; preds = %191, %165
  br label %193

193:                                              ; preds = %192, %153
  %194 = load i8*, i8** %14, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load i64, i64* %7, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* @context, align 4
  %202 = load i64, i64* @errno, align 8
  %203 = call i32 @krb5_warn(i32 %201, i64 %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %204

204:                                              ; preds = %200, %193
  %205 = load i32, i32* @context, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @hdb_free_master_key(i32 %205, i32 %206)
  %208 = load i64, i64* %7, align 8
  %209 = icmp ne i64 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @exit(i32 %210) #3
  unreachable
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @krb5_std_usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i8* @hdb_db_dir(i32) #1

declare dso_local i64 @krb5_string_to_enctype(i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @hdb_read_master_key(i32, i8*, i32*) #1

declare dso_local i64 @krb5_generate_random_keyblock(i32, i32, i32*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #1

declare dso_local i32 @krb5_string_to_key_salt(i32, i32, i8*, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8, i32*) #1

declare dso_local i64 @hdb_add_master_key(i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i64 @hdb_write_master_key(i32, i8*, i32) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @hdb_free_master_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
