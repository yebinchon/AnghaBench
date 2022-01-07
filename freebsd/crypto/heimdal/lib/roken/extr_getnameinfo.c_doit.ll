; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getnameinfo.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getnameinfo.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.servent = type { i32 }

@NI_NUMERICHOST = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@NI_NOFQDN = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@EAI_NONAME = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@NI_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32, i8*, i64, i8*, i64, i32)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doit(i32 %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5, i8* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.hostent*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.servent*, align 8
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %87

26:                                               ; preds = %9
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* @NI_NUMERICHOST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32* @inet_ntop(i32 %32, i8* %33, i8* %34, i64 %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %39, i32* %10, align 4
  br label %129

40:                                               ; preds = %31
  br label %86

41:                                               ; preds = %26
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.hostent* @gethostbyaddr(i8* %42, i64 %43, i32 %44)
  store %struct.hostent* %45, %struct.hostent** %20, align 8
  %46 = load %struct.hostent*, %struct.hostent** %20, align 8
  %47 = icmp ne %struct.hostent* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = load i8*, i8** %15, align 8
  %50 = load %struct.hostent*, %struct.hostent** %20, align 8
  %51 = call i32 @hostent_find_fqdn(%struct.hostent* %50)
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @strlcpy(i8* %49, i32 %51, i64 %52)
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @NI_NOFQDN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i8*, i8** %15, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 46)
  store i8* %60, i8** %21, align 8
  %61 = load i8*, i8** %21, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** %21, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65, %48
  br label %85

67:                                               ; preds = %41
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @NI_NAMEREQD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @EAI_NONAME, align 4
  store i32 %73, i32* %10, align 4
  br label %129

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32* @inet_ntop(i32 %75, i8* %76, i8* %77, i64 %78)
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %82, i32* %10, align 4
  br label %129

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %40
  br label %87

87:                                               ; preds = %86, %9
  %88 = load i8*, i8** %17, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %128

90:                                               ; preds = %87
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @NI_NUMERICSERV, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i8*, i8** %17, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @ntohs(i32 %98)
  %100 = call i32 @snprintf(i8* %96, i64 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %127

101:                                              ; preds = %90
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* @NI_DGRAM, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  br label %107

107:                                              ; preds = %106, %101
  %108 = load i32, i32* %14, align 4
  %109 = load i8*, i8** %22, align 8
  %110 = call %struct.servent* @getservbyport(i32 %108, i8* %109)
  store %struct.servent* %110, %struct.servent** %23, align 8
  %111 = load %struct.servent*, %struct.servent** %23, align 8
  %112 = icmp eq %struct.servent* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i8*, i8** %17, align 8
  %115 = load i64, i64* %18, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @ntohs(i32 %116)
  %118 = call i32 @snprintf(i8* %114, i64 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %126

119:                                              ; preds = %107
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.servent*, %struct.servent** %23, align 8
  %122 = getelementptr inbounds %struct.servent, %struct.servent* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %18, align 8
  %125 = call i32 @strlcpy(i8* %120, i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %119, %113
  br label %127

127:                                              ; preds = %126, %95
  br label %128

128:                                              ; preds = %127, %87
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %81, %72, %38
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

declare dso_local i32* @inet_ntop(i32, i8*, i8*, i64) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i64, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @hostent_find_fqdn(%struct.hostent*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
