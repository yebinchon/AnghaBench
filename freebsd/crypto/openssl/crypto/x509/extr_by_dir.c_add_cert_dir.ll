; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_by_dir.c_add_cert_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_by_dir.c_add_cert_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@X509_F_ADD_CERT_DIR = common dso_local global i32 0, align 4
@X509_R_INVALID_DIRECTORY = common dso_local global i32 0, align 4
@LIST_SEPARATOR_CHAR = common dso_local global i8 0, align 1
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@by_dir_hash_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @add_cert_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cert_dir(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %22 = load i32, i32* @X509_R_INVALID_DIRECTORY, align 4
  %23 = call i32 @X509err(i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %165

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %12, align 8
  br label %27

27:                                               ; preds = %158, %24
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @LIST_SEPARATOR_CHAR, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %157

39:                                               ; preds = %34, %27
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %158

51:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @sk_BY_DIR_ENTRY_num(i32* %56)
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.TYPE_8__* @sk_BY_DIR_ENTRY_value(i32* %62, i32 %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %13, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @strlen(i32* %67)
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @strncmp(i32* %74, i8* %75, i64 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %84

80:                                               ; preds = %71, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %52

84:                                               ; preds = %79, %52
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @sk_BY_DIR_ENTRY_num(i32* %88)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %158

92:                                               ; preds = %84
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = call i32* (...) @sk_BY_DIR_ENTRY_new_null()
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %107 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %108 = call i32 @X509err(i32 %106, i32 %107)
  store i32 0, i32* %4, align 4
  br label %165

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %92
  %111 = call %struct.TYPE_8__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %13, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = icmp eq %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %116 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %117 = call i32 @X509err(i32 %115, i32 %116)
  store i32 0, i32* %4, align 4
  br label %165

118:                                              ; preds = %110
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @by_dir_hash_cmp, align 4
  %123 = call i32* @sk_BY_DIR_HASH_new(i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32* @OPENSSL_strndup(i8* %126, i64 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %118
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %135, %118
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %142 = call i32 @by_dir_entry_free(%struct.TYPE_8__* %141)
  store i32 0, i32* %4, align 4
  br label %165

143:                                              ; preds = %135
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %148 = call i32 @sk_BY_DIR_ENTRY_push(i32* %146, %struct.TYPE_8__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %143
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %152 = call i32 @by_dir_entry_free(%struct.TYPE_8__* %151)
  %153 = load i32, i32* @X509_F_ADD_CERT_DIR, align 4
  %154 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %155 = call i32 @X509err(i32 %153, i32 %154)
  store i32 0, i32* %4, align 4
  br label %165

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %34
  br label %158

158:                                              ; preds = %157, %91, %50
  %159 = load i8*, i8** %12, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %12, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %27, label %164

164:                                              ; preds = %158
  store i32 1, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %150, %140, %114, %105, %20
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @sk_BY_DIR_ENTRY_num(i32*) #1

declare dso_local %struct.TYPE_8__* @sk_BY_DIR_ENTRY_value(i32*, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i32* @sk_BY_DIR_ENTRY_new_null(...) #1

declare dso_local %struct.TYPE_8__* @OPENSSL_malloc(i32) #1

declare dso_local i32* @sk_BY_DIR_HASH_new(i32) #1

declare dso_local i32* @OPENSSL_strndup(i8*, i64) #1

declare dso_local i32 @by_dir_entry_free(%struct.TYPE_8__*) #1

declare dso_local i32 @sk_BY_DIR_ENTRY_push(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
