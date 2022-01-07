; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_keytab.c_test_memory_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_keytab.c_test_memory_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"krb5_kt_resolve\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@ETYPE_AES256_CTS_HMAC_SHA1_96 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"krb5_generate_random_keyblock\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"krb5_kt_get_entry\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"krb5_kt_close\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"lha3@SU.SE\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"krb5_kt_get_entry when if should fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @test_memory_keytab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memory_keytab(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @krb5_kt_resolve(i32 %14, i8* %15, i32* %8)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @krb5_err(i32 %20, i32 1, i64 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %3
  %24 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 12)
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %27 = call i64 @krb5_parse_name(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @krb5_err(i32 %31, i32 1, i64 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %23
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %39 = call i64 @krb5_generate_random_keyblock(i32 %36, i32 %37, i32* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @krb5_err(i32 %43, i32 1, i64 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @krb5_kt_add_entry(i32 %47, i32 %48, %struct.TYPE_7__* %11)
  %50 = load i32, i32* %4, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @krb5_kt_resolve(i32 %50, i8* %51, i32* %9)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @krb5_err(i32 %56, i32 1, i64 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  %65 = call i64 @krb5_kt_get_entry(i32 %60, i32 %61, i32 %63, i32 0, i32 %64, %struct.TYPE_7__* %12)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @krb5_err(i32 %69, i32 1, i64 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @krb5_kt_free_entry(i32 %73, %struct.TYPE_7__* %12)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @krb5_kt_close(i32 %75, i32 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @krb5_err(i32 %81, i32 1, i64 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %72
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %9, align 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  %90 = call i64 @krb5_kt_get_entry(i32 %85, i32 %86, i32 %88, i32 0, i32 %89, %struct.TYPE_7__* %12)
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @krb5_err(i32 %94, i32 1, i64 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %84
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @krb5_kt_free_entry(i32 %98, %struct.TYPE_7__* %12)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @krb5_kt_close(i32 %100, i32 %101)
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* %4, align 4
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @krb5_err(i32 %106, i32 1, i64 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %97
  %110 = load i32, i32* %4, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @krb5_kt_resolve(i32 %110, i8* %111, i32* %10)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %4, align 4
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @krb5_err(i32 %116, i32 1, i64 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %109
  %120 = call i32 @memset(%struct.TYPE_7__* %13, i32 0, i32 12)
  %121 = load i32, i32* %4, align 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %123 = call i64 @krb5_parse_name(i32 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %122)
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* %4, align 4
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @krb5_err(i32 %127, i32 1, i64 %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %119
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %135 = call i64 @krb5_generate_random_keyblock(i32 %132, i32 %133, i32* %134)
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* %4, align 4
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @krb5_err(i32 %139, i32 1, i64 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %130
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @krb5_kt_add_entry(i32 %143, i32 %144, %struct.TYPE_7__* %13)
  %146 = load i32, i32* %4, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = call i64 @krb5_kt_resolve(i32 %146, i8* %147, i32* %8)
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* %4, align 4
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @krb5_err(i32 %152, i32 1, i64 %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %142
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %8, align 4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  %161 = call i64 @krb5_kt_get_entry(i32 %156, i32 %157, i32 %159, i32 0, i32 %160, %struct.TYPE_7__* %12)
  store i64 %161, i64* %7, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @krb5_errx(i32 %165, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %155
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @krb5_kt_remove_entry(i32 %168, i32 %169, %struct.TYPE_7__* %11)
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i64 @krb5_kt_close(i32 %171, i32 %172)
  store i64 %173, i64* %7, align 8
  %174 = load i64, i64* %7, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load i32, i32* %4, align 4
  %178 = load i64, i64* %7, align 8
  %179 = call i32 @krb5_err(i32 %177, i32 1, i64 %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %176, %167
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @krb5_kt_free_entry(i32 %181, %struct.TYPE_7__* %11)
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @krb5_kt_remove_entry(i32 %183, i32 %184, %struct.TYPE_7__* %13)
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i64 @krb5_kt_close(i32 %186, i32 %187)
  store i64 %188, i64* %7, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %180
  %192 = load i32, i32* %4, align 4
  %193 = load i64, i64* %7, align 8
  %194 = call i32 @krb5_err(i32 %192, i32 1, i64 %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %195

195:                                              ; preds = %191, %180
  %196 = load i32, i32* %4, align 4
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @krb5_free_principal(i32 %196, i32 %198)
  %200 = load i32, i32* %4, align 4
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %202 = call i32 @krb5_free_keyblock_contents(i32 %200, i32* %201)
  ret void
}

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i64 @krb5_generate_random_keyblock(i32, i32, i32*) #1

declare dso_local i32 @krb5_kt_add_entry(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @krb5_kt_get_entry(i32, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @krb5_kt_close(i32, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_kt_remove_entry(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
