; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_check_principals_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2-pubkey.c_check_principals_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.sshkey_cert = type { i64, i32* }
%struct.sshauthopt = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: bad principals options: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: matched principal \22%.100s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i8*, %struct.sshkey_cert*, i8*, %struct.sshauthopt**)* @check_principals_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_principals_line(%struct.ssh* %0, i8* %1, %struct.sshkey_cert* %2, i8* %3, %struct.sshauthopt** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sshkey_cert*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sshauthopt**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.sshauthopt*, align 8
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.sshkey_cert* %2, %struct.sshkey_cert** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sshauthopt** %4, %struct.sshauthopt*** %11, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %16, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %17, align 8
  %18 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  %19 = icmp ne %struct.sshauthopt** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %21, align 8
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %14, align 8
  br label %29

29:                                               ; preds = %52, %22
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i8*, i8** %14, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %14, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %14, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br label %48

48:                                               ; preds = %43, %38, %33
  %49 = phi i1 [ true, %38 ], [ true, %33 ], [ %47, %43 ]
  br label %50

50:                                               ; preds = %48, %29
  %51 = phi i1 [ false, %29 ], [ %49, %48 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %14, align 8
  store i8 0, i8* %53, align 1
  br label %29

55:                                               ; preds = %50
  store i8* null, i8** %15, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i8* @strrchr(i8* %56, i8 signext 32)
  store i8* %57, i8** %14, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strrchr(i8* %60, i8 signext 9)
  store i8* %61, i8** %14, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %14, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 9
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ true, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %14, align 8
  br label %64

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %14, align 8
  store i8* %82, i8** %8, align 8
  br label %83

83:                                               ; preds = %80, %59
  %84 = load i8*, i8** %15, align 8
  %85 = call %struct.sshauthopt* @sshauthopt_parse(i8* %84, i8** %16)
  store %struct.sshauthopt* %85, %struct.sshauthopt** %17, align 8
  %86 = icmp eq %struct.sshauthopt* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %88, i8* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @auth_debug_add(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %91, i8* %92)
  store i32 -1, i32* %6, align 4
  br label %140

94:                                               ; preds = %83
  store i64 0, i64* %12, align 8
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.sshkey_cert*, %struct.sshkey_cert** %9, align 8
  %98 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %95
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.sshkey_cert*, %struct.sshkey_cert** %9, align 8
  %104 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @strcmp(i8* %102, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %121

112:                                              ; preds = %101
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.sshkey_cert*, %struct.sshkey_cert** %9, align 8
  %115 = getelementptr inbounds %struct.sshkey_cert, %struct.sshkey_cert* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @debug3(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %113, i32 %119)
  store i64 1, i64* %13, align 8
  br label %121

121:                                              ; preds = %112, %111
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %95

124:                                              ; preds = %95
  %125 = load i64, i64* %13, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  %129 = icmp ne %struct.sshauthopt** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.sshauthopt*, %struct.sshauthopt** %17, align 8
  %132 = load %struct.sshauthopt**, %struct.sshauthopt*** %11, align 8
  store %struct.sshauthopt* %131, %struct.sshauthopt** %132, align 8
  store %struct.sshauthopt* null, %struct.sshauthopt** %17, align 8
  br label %133

133:                                              ; preds = %130, %127, %124
  %134 = load %struct.sshauthopt*, %struct.sshauthopt** %17, align 8
  %135 = call i32 @sshauthopt_free(%struct.sshauthopt* %134)
  %136 = load i64, i64* %13, align 8
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 -1
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %133, %87
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.sshauthopt* @sshauthopt_parse(i8*, i8**) #1

declare dso_local i32 @debug(i8*, i8*, i8*) #1

declare dso_local i32 @auth_debug_add(i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @debug3(i8*, i8*, i32) #1

declare dso_local i32 @sshauthopt_free(%struct.sshauthopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
