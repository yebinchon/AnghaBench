; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_crypt_client.c__des_crypt_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_crypt_client.c__des_crypt_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desparams = type { i64, i64, i8*, i8* }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i8*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.netconfig = type { i32* }

@NC_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getnetconfig: %s\00", align 1
@DESERR_HWERROR = common dso_local global i32 0, align 4
@CRYPT_PROG = common dso_local global i32 0, align 4
@CRYPT_VERS = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i64 0, align 8
@ENCRYPT_DES = common dso_local global i32 0, align 4
@DECRYPT_DES = common dso_local global i32 0, align 4
@CBC = common dso_local global i64 0, align 8
@CBC_DES = common dso_local global i32 0, align 4
@ECB_DES = common dso_local global i32 0, align 4
@DESERR_NONE = common dso_local global i32 0, align 4
@DESERR_NOHWDEVICE = common dso_local global i32 0, align 4
@xdr_desresp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_des_crypt_call(i8* %0, i32 %1, %struct.desparams* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.desparams*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.netconfig*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.desparams* %2, %struct.desparams** %7, align 8
  store %struct.netconfig* null, %struct.netconfig** %11, align 8
  %14 = call i8* (...) @setnetconfig()
  store i8* %14, i8** %12, align 8
  br label %15

15:                                               ; preds = %32, %3
  %16 = load i8*, i8** %12, align 8
  %17 = call %struct.netconfig* @getnetconfig(i8* %16)
  store %struct.netconfig* %17, %struct.netconfig** %11, align 8
  %18 = icmp ne %struct.netconfig* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %21 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %26 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @NC_LOOPBACK, align 4
  %29 = call i64 @strcmp(i32* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24, %19
  br label %15

33:                                               ; preds = %31, %15
  %34 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %35 = icmp eq %struct.netconfig* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 (...) @nc_sperror()
  %38 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @endnetconfig(i8* %39)
  %41 = load i32, i32* @DESERR_HWERROR, align 4
  store i32 %41, i32* %4, align 4
  br label %145

42:                                               ; preds = %33
  %43 = load i32, i32* @CRYPT_PROG, align 4
  %44 = load i32, i32* @CRYPT_VERS, align 4
  %45 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %46 = call i32* @clnt_tp_create(i32* null, i32 %43, i32 %44, %struct.netconfig* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @endnetconfig(i8* %50)
  %52 = load i32, i32* @DESERR_HWERROR, align 4
  store i32 %52, i32* %4, align 4
  br label %145

53:                                               ; preds = %42
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @endnetconfig(i8* %54)
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.desparams*, %struct.desparams** %7, align 8
  %63 = getelementptr inbounds %struct.desparams, %struct.desparams* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ENCRYPT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @ENCRYPT_DES, align 4
  br label %71

69:                                               ; preds = %53
  %70 = load i32, i32* @DECRYPT_DES, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = load %struct.desparams*, %struct.desparams** %7, align 8
  %75 = getelementptr inbounds %struct.desparams, %struct.desparams* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CBC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @CBC_DES, align 4
  br label %83

81:                                               ; preds = %71
  %82 = load i32, i32* @ECB_DES, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct.desparams*, %struct.desparams** %7, align 8
  %87 = getelementptr inbounds %struct.desparams, %struct.desparams* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @bcopy(i8* %88, i8* %90, i32 8)
  %92 = load %struct.desparams*, %struct.desparams** %7, align 8
  %93 = getelementptr inbounds %struct.desparams, %struct.desparams* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @bcopy(i8* %94, i8* %96, i32 8)
  %98 = load i32*, i32** %8, align 8
  %99 = call %struct.TYPE_10__* @des_crypt_1(%struct.TYPE_11__* %10, i32* %98)
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %9, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = icmp eq %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %83
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @clnt_destroy(i32* %103)
  %105 = load i32, i32* @DESERR_HWERROR, align 4
  store i32 %105, i32* %4, align 4
  br label %145

106:                                              ; preds = %83
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %13, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DESERR_NONE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %106
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DESERR_NOHWDEVICE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %115, %106
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @bcopy(i8* %125, i8* %126, i32 %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.desparams*, %struct.desparams** %7, align 8
  %133 = getelementptr inbounds %struct.desparams, %struct.desparams* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @bcopy(i8* %131, i8* %134, i32 8)
  br label %136

136:                                              ; preds = %121, %115
  %137 = load i32*, i32** %8, align 8
  %138 = load i64, i64* @xdr_desresp, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = call i32 @clnt_freeres(i32* %137, i32 %139, %struct.TYPE_10__* %140)
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @clnt_destroy(i32* %142)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %136, %102, %49, %36
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i8* @setnetconfig(...) #1

declare dso_local %struct.netconfig* @getnetconfig(i8*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @nc_sperror(...) #1

declare dso_local i32 @endnetconfig(i8*) #1

declare dso_local i32* @clnt_tp_create(i32*, i32, i32, %struct.netconfig*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @des_crypt_1(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @clnt_freeres(i32*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
