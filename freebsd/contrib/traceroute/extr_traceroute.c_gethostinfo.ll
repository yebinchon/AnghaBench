; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_gethostinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_gethostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostinfo = type { i32, i64*, i8* }
%struct.hostent = type { i64, i32, i8*, i8** }

@MAXHOSTNAMELEN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: hostname \22%.32s...\22 is too long\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: calloc %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: unknown host %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%s: bad host %s\0A\00", align 1
@capdns = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostinfo* @gethostinfo(i8* %0) #0 {
  %2 = alloca %struct.hostinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca %struct.hostinfo*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = load i64, i64* @MAXHOSTNAMELEN, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @prog, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @Fprintf(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %1
  %21 = call i8* @calloc(i32 1, i32 24)
  %22 = bitcast i8* %21 to %struct.hostinfo*
  store %struct.hostinfo* %22, %struct.hostinfo** %6, align 8
  %23 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %24 = icmp eq %struct.hostinfo* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @prog, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 @Fprintf(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %20
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @inet_addr(i8* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @strdup(i8* %39)
  %41 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %42 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %44 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = call i8* @calloc(i32 1, i32 8)
  %46 = bitcast i8* %45 to i64*
  %47 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %48 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %47, i32 0, i32 1
  store i64* %46, i64** %48, align 8
  %49 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %50 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* @prog, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i8* @strerror(i32 %56)
  %58 = call i32 @Fprintf(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %38
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %63 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %61, i64* %65, align 8
  %66 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  store %struct.hostinfo* %66, %struct.hostinfo** %2, align 8
  br label %158

67:                                               ; preds = %32
  %68 = load i8*, i8** %3, align 8
  %69 = call %struct.hostent* @gethostbyname(i8* %68)
  store %struct.hostent* %69, %struct.hostent** %5, align 8
  %70 = load %struct.hostent*, %struct.hostent** %5, align 8
  %71 = icmp eq %struct.hostent* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* @prog, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @Fprintf(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %75)
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %67
  %79 = load %struct.hostent*, %struct.hostent** %5, align 8
  %80 = getelementptr inbounds %struct.hostent, %struct.hostent* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AF_INET, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.hostent*, %struct.hostent** %5, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 4
  br i1 %88, label %89, label %95

89:                                               ; preds = %84, %78
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* @prog, align 4
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @Fprintf(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %84
  %96 = load %struct.hostent*, %struct.hostent** %5, align 8
  %97 = getelementptr inbounds %struct.hostent, %struct.hostent* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %101 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  store i32 0, i32* %4, align 4
  %102 = load %struct.hostent*, %struct.hostent** %5, align 8
  %103 = getelementptr inbounds %struct.hostent, %struct.hostent* %102, i32 0, i32 3
  %104 = load i8**, i8*** %103, align 8
  store i8** %104, i8*** %7, align 8
  br label %105

105:                                              ; preds = %110, %95
  %106 = load i8**, i8*** %7, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  %113 = load i8**, i8*** %7, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i32 1
  store i8** %114, i8*** %7, align 8
  br label %105

115:                                              ; preds = %105
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %118 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i8* @calloc(i32 %119, i32 8)
  %121 = bitcast i8* %120 to i64*
  %122 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %123 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %122, i32 0, i32 1
  store i64* %121, i64** %123, align 8
  %124 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %125 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = icmp eq i64* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %115
  %129 = load i32, i32* @stderr, align 4
  %130 = load i32, i32* @prog, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i8* @strerror(i32 %131)
  %133 = call i32 @Fprintf(i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %130, i8* %132)
  %134 = call i32 @exit(i32 1) #3
  unreachable

135:                                              ; preds = %115
  %136 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  %137 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  store i64* %138, i64** %9, align 8
  %139 = load %struct.hostent*, %struct.hostent** %5, align 8
  %140 = getelementptr inbounds %struct.hostent, %struct.hostent* %139, i32 0, i32 3
  %141 = load i8**, i8*** %140, align 8
  store i8** %141, i8*** %7, align 8
  br label %142

142:                                              ; preds = %151, %135
  %143 = load i8**, i8*** %7, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load i64*, i64** %9, align 8
  %148 = load i8**, i8*** %7, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @memcpy(i64* %147, i8* %149, i32 8)
  br label %151

151:                                              ; preds = %146
  %152 = load i64*, i64** %9, align 8
  %153 = getelementptr inbounds i64, i64* %152, i32 1
  store i64* %153, i64** %9, align 8
  %154 = load i8**, i8*** %7, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %155, i8*** %7, align 8
  br label %142

156:                                              ; preds = %142
  %157 = load %struct.hostinfo*, %struct.hostinfo** %6, align 8
  store %struct.hostinfo* %157, %struct.hostinfo** %2, align 8
  br label %158

158:                                              ; preds = %156, %60
  %159 = load %struct.hostinfo*, %struct.hostinfo** %2, align 8
  ret %struct.hostinfo* %159
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Fprintf(i32, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
