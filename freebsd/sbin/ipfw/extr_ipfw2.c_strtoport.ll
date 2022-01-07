; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_strtoport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_strtoport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32* }
%struct.servent = type { i32 }

@IPPROTO_ETHERTYPE = common dso_local global i32 0, align 4
@ether_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32)* @strtoport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strtoport(i8* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.protoent*, align 8
  %15 = alloca %struct.servent*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8**, i8*** %7, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %167

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isdigit(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @strtol(i8* %29, i8** %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %167

33:                                               ; preds = %23
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %79, %33
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isalnum(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 92
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %12, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 95
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br label %60

60:                                               ; preds = %55, %50, %45, %40
  %61 = phi i1 [ true, %50 ], [ true, %45 ], [ true, %40 ], [ %59, %55 ]
  br label %62

62:                                               ; preds = %60, %35
  %63 = phi i1 [ false, %35 ], [ %61, %60 ]
  br i1 %63, label %64, label %82

64:                                               ; preds = %62
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %12, align 8
  br label %78

78:                                               ; preds = %75, %69, %64
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %12, align 8
  br label %35

82:                                               ; preds = %62
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = add nsw i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = call i8* @safe_calloc(i32 %89, i32 1)
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %110, %82
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 92
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 %103, i8* %108, align 1
  br label %109

109:                                              ; preds = %101, %96
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  br label %92

113:                                              ; preds = %92
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @IPPROTO_ETHERTYPE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %113
  %123 = load i32, i32* @ether_types, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @match_token(i32 %123, i8* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i8*, i8** %12, align 8
  %132 = load i8**, i8*** %7, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %5, align 4
  br label %167

134:                                              ; preds = %122
  br label %166

135:                                              ; preds = %113
  store %struct.protoent* null, %struct.protoent** %14, align 8
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.protoent* @getprotobynumber(i32 %139)
  store %struct.protoent* %140, %struct.protoent** %14, align 8
  br label %141

141:                                              ; preds = %138, %135
  %142 = call i32 @setservent(i32 1)
  %143 = load i8*, i8** %11, align 8
  %144 = load %struct.protoent*, %struct.protoent** %14, align 8
  %145 = icmp ne %struct.protoent* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.protoent*, %struct.protoent** %14, align 8
  %148 = getelementptr inbounds %struct.protoent, %struct.protoent* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  br label %151

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i32* [ %149, %146 ], [ null, %150 ]
  %153 = call %struct.servent* @getservbyname(i8* %143, i32* %152)
  store %struct.servent* %153, %struct.servent** %15, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @free(i8* %154)
  %156 = load %struct.servent*, %struct.servent** %15, align 8
  %157 = icmp ne %struct.servent* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i8*, i8** %12, align 8
  %160 = load i8**, i8*** %7, align 8
  store i8* %159, i8** %160, align 8
  %161 = load %struct.servent*, %struct.servent** %15, align 8
  %162 = getelementptr inbounds %struct.servent, %struct.servent* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohs(i32 %163)
  store i32 %164, i32* %5, align 4
  br label %167

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165, %134
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %158, %130, %28, %22
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i8* @safe_calloc(i32, i32) #1

declare dso_local i32 @match_token(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i32 @setservent(i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
