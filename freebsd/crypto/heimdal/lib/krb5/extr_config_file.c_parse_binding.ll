; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_parse_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_parse_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileptr = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"missing =\00", align 1
@KRB5_CONFIG_BADFORMAT = common dso_local global i32 0, align 4
@krb5_config_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@krb5_config_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileptr*, i32*, i8*, %struct.TYPE_8__**, %struct.TYPE_8__**, i8**)* @parse_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_binding(%struct.fileptr* %0, i32* %1, i8* %2, %struct.TYPE_8__** %3, %struct.TYPE_8__** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fileptr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.fileptr* %0, %struct.fileptr** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__** %4, %struct.TYPE_8__*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %15, align 8
  br label %19

19:                                               ; preds = %37, %6
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 61
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = phi i1 [ false, %24 ], [ false, %19 ], [ %34, %29 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  br label %19

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @KRB5_CONFIG_BADFORMAT, align 4
  store i32 %47, i32* %7, align 4
  br label %144

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %16, align 8
  br label %50

50:                                               ; preds = %55, %48
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isspace(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @KRB5_CONFIG_BADFORMAT, align 4
  store i32 %65, i32* %7, align 4
  br label %144

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %74, %66
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @isspace(i8 zeroext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  br label %69

77:                                               ; preds = %69
  %78 = load i8*, i8** %16, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 123
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* @krb5_config_list, align 4
  %87 = call %struct.TYPE_8__* @_krb5_config_get_entry(%struct.TYPE_8__** %84, i8* %85, i32 %86)
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %14, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = icmp eq %struct.TYPE_8__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %91, align 8
  %92 = load i32, i32* @KRB5_CONFIG_BADFORMAT, align 4
  store i32 %92, i32* %7, align 4
  br label %144

93:                                               ; preds = %83
  %94 = load %struct.fileptr*, %struct.fileptr** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i8**, i8*** %13, align 8
  %100 = call i32 @parse_list(%struct.fileptr* %94, i32* %95, i32* %98, i8** %99)
  store i32 %100, i32* %17, align 4
  br label %140

101:                                              ; preds = %77
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load i32, i32* @krb5_config_string, align 4
  %105 = call %struct.TYPE_8__* @_krb5_config_get_entry(%struct.TYPE_8__** %102, i8* %103, i32 %104)
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %14, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %107 = icmp eq %struct.TYPE_8__* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %109, align 8
  %110 = load i32, i32* @KRB5_CONFIG_BADFORMAT, align 4
  store i32 %110, i32* %7, align 4
  br label %144

111:                                              ; preds = %101
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %15, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8* %117, i8** %10, align 8
  br label %118

118:                                              ; preds = %130, %111
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = icmp ugt i8* %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @isspace(i8 zeroext %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %122, %118
  %129 = phi i1 [ false, %118 ], [ %127, %122 ]
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %132, i8** %10, align 8
  br label %118

133:                                              ; preds = %128
  %134 = load i8*, i8** %10, align 8
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @strdup(i8* %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %93
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %142 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %142, align 8
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %108, %90, %63, %45
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local %struct.TYPE_8__* @_krb5_config_get_entry(%struct.TYPE_8__**, i8*, i32) #1

declare dso_local i32 @parse_list(%struct.fileptr*, i32*, i32*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
