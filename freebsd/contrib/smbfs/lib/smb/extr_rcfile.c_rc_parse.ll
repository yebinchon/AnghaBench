; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { i8*, i32* }
%struct.rcsection = type { i32 }
%struct.rckey = type { i8* }

@stNewLine = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@stHeader = common dso_local global i32 0, align 4
@stSkipToEOL = common dso_local global i32 0, align 4
@stGetKey = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Key '%s' defined before section\0A\00", align 1
@stGetValue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Well, I can't parse file '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcfile*)* @rc_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_parse(%struct.rcfile* %0) #0 {
  %2 = alloca %struct.rcfile*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcsection*, align 8
  %7 = alloca %struct.rckey*, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.rcfile* %0, %struct.rcfile** %2, align 8
  %11 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %12 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* @stNewLine, align 4
  store i32 %14, i32* %4, align 4
  store %struct.rcsection* null, %struct.rcsection** %6, align 8
  store %struct.rckey* null, %struct.rckey** %7, align 8
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %15, i8** %9, align 8
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 2047
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %145, %140, %120, %115, %106, %101, %97, %86, %66, %39, %35, %25, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @getc(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @EOF, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %152

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %17

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @stNewLine, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %31, i8** %9, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @isspace(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %17

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 91
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @stHeader, align 4
  store i32 %40, i32* %4, align 4
  store %struct.rcsection* null, %struct.rcsection** %6, align 8
  br label %17

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 35
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 59
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @stSkipToEOL, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @stGetKey, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @stSkipToEOL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @stNewLine, align 4
  store i32 %64, i32* %4, align 4
  %65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %63, %60
  br label %17

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @stHeader, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 93
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  store i8 0, i8* %75, align 1
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %76, i8** %9, align 8
  %77 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %78 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %79 = call %struct.rcsection* @rc_addsect(%struct.rcfile* %77, i8* %78)
  store %struct.rcsection* %79, %struct.rcsection** %6, align 8
  %80 = load i32, i32* @stSkipToEOL, align 4
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %9, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %81, %74
  br label %17

87:                                               ; preds = %67
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @stGetKey, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91
  br label %17

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @stNewLine, align 4
  store i32 %102, i32* %4, align 4
  br label %17

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 61
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  store i8 %108, i8* %109, align 1
  br label %17

111:                                              ; preds = %103
  %112 = load i8*, i8** %9, align 8
  store i8 0, i8* %112, align 1
  %113 = load %struct.rcsection*, %struct.rcsection** %6, align 8
  %114 = icmp eq %struct.rcsection* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* @stderr, align 4
  %117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %118 = call i32 @fprintf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @stSkipToEOL, align 4
  store i32 %119, i32* %4, align 4
  br label %17

120:                                              ; preds = %111
  %121 = load %struct.rcsection*, %struct.rcsection** %6, align 8
  %122 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %123 = call %struct.rckey* @rc_sect_addkey(%struct.rcsection* %121, i8* %122, i32* null)
  store %struct.rckey* %123, %struct.rckey** %7, align 8
  %124 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8* %124, i8** %9, align 8
  %125 = load i32, i32* @stGetValue, align 4
  store i32 %125, i32* %4, align 4
  br label %17

126:                                              ; preds = %87
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @stGetValue, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, i32* @stderr, align 4
  %132 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %133 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  %136 = load i32, i32* @stSkipToEOL, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %130, %126
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 10
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* %5, align 4
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %9, align 8
  store i8 %142, i8* %143, align 1
  br label %17

145:                                              ; preds = %137
  %146 = load i8*, i8** %9, align 8
  store i8 0, i8* %146, align 1
  %147 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %148 = call i8* @strdup(i8* %147)
  %149 = load %struct.rckey*, %struct.rckey** %7, align 8
  %150 = getelementptr inbounds %struct.rckey, %struct.rckey* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load i32, i32* @stNewLine, align 4
  store i32 %151, i32* %4, align 4
  store %struct.rckey* null, %struct.rckey** %7, align 8
  br label %17

152:                                              ; preds = %17
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @EOF, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @stGetValue, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i8*, i8** %9, align 8
  store i8 0, i8* %161, align 1
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %163 = call i8* @strdup(i8* %162)
  %164 = load %struct.rckey*, %struct.rckey** %7, align 8
  %165 = getelementptr inbounds %struct.rckey, %struct.rckey* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %160, %156, %152
  ret void
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local %struct.rcsection* @rc_addsect(%struct.rcfile*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.rckey* @rc_sect_addkey(%struct.rcsection*, i8*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
