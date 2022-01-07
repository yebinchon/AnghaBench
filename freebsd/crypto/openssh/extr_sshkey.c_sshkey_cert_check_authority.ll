; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_cert_check_authority.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_cert_check_authority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32* }

@SSH2_CERT_TYPE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Certificate invalid: not a host certificate\00", align 1
@SSH_ERR_KEY_CERT_INVALID = common dso_local global i32 0, align 4
@SSH2_CERT_TYPE_USER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Certificate invalid: not a user certificate\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Certificate invalid: not yet valid\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Certificate invalid: expired\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Certificate lacks principal list\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Certificate invalid: name is not a listed principal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_cert_check_authority(%struct.sshkey* %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sshkey*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sshkey* %0, %struct.sshkey** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = call i64 @time(i32* null)
  store i64 %15, i64* %14, align 8
  %16 = load i8**, i8*** %11, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i8**, i8*** %11, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %25 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSH2_CERT_TYPE_HOST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %33, i32* %6, align 4
  br label %127

34:                                               ; preds = %23
  br label %47

35:                                               ; preds = %20
  %36 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %37 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SSH2_CERT_TYPE_USER, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %45, i32* %6, align 4
  br label %127

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i64, i64* %14, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %51, align 8
  %52 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %52, i32* %6, align 4
  br label %127

53:                                               ; preds = %47
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %56 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %63, i32* %6, align 4
  br label %127

64:                                               ; preds = %53
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %67 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %65, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %73, align 8
  %74 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %74, i32* %6, align 4
  br label %127

75:                                               ; preds = %64
  %76 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %77 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8** %86, align 8
  %87 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %87, i32* %6, align 4
  br label %127

88:                                               ; preds = %82
  br label %126

89:                                               ; preds = %75
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %125

92:                                               ; preds = %89
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %93

93:                                               ; preds = %115, %92
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %96 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %94, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %93
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.sshkey*, %struct.sshkey** %7, align 8
  %104 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @strcmp(i8* %102, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  store i64 1, i64* %13, align 8
  br label %118

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %93

118:                                              ; preds = %113, %93
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8** %122, align 8
  %123 = load i32, i32* @SSH_ERR_KEY_CERT_INVALID, align 4
  store i32 %123, i32* %6, align 4
  br label %127

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %89
  br label %126

126:                                              ; preds = %125, %88
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %121, %85, %72, %61, %50, %43, %31
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
