; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_client_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_client_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { i32 }
%struct.client_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.option = type { i64 }

@ACTION_DEFAULT = common dso_local global i32 0, align 4
@ACTION_SUPERSEDE = common dso_local global i32 0, align 4
@ACTION_APPEND = common dso_local global i32 0, align 4
@ACTION_PREPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"hardware address parameter %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"not allowed here.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"nested interface declaration.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"expecting a statement.\00", align 1
@SEMI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"semicolon expected.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_client_statement(i32* %0, %struct.interface_info* %1, %struct.client_config* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.interface_info*, align 8
  %6 = alloca %struct.client_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.option*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.interface_info* %1, %struct.interface_info** %5, align 8
  store %struct.client_config* %2, %struct.client_config** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @next_token(i8** %8, i32* %10)
  switch i32 %11, label %185 [
    i32 130, label %12
    i32 144, label %19
    i32 129, label %38
    i32 146, label %57
    i32 138, label %76
    i32 139, label %95
    i32 143, label %100
    i32 135, label %113
    i32 134, label %121
    i32 128, label %131
    i32 133, label %136
    i32 131, label %141
    i32 137, label %146
    i32 145, label %151
    i32 142, label %156
    i32 132, label %161
    i32 141, label %166
    i32 140, label %175
    i32 147, label %178
    i32 136, label %181
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.client_config*, %struct.client_config** %6, align 8
  %15 = getelementptr inbounds %struct.client_config, %struct.client_config* %14, i32 0, i32 13
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = call %struct.option* @parse_option_decl(i32* %13, i32* %17)
  br label %199

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.client_config*, %struct.client_config** %6, align 8
  %22 = getelementptr inbounds %struct.client_config, %struct.client_config* %21, i32 0, i32 12
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call %struct.option* @parse_option_decl(i32* %20, i32* %24)
  store %struct.option* %25, %struct.option** %9, align 8
  %26 = load %struct.option*, %struct.option** %9, align 8
  %27 = icmp ne %struct.option* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i32, i32* @ACTION_DEFAULT, align 4
  %30 = load %struct.client_config*, %struct.client_config** %6, align 8
  %31 = getelementptr inbounds %struct.client_config, %struct.client_config* %30, i32 0, i32 11
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.option*, %struct.option** %9, align 8
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %29, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %19
  br label %199

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.client_config*, %struct.client_config** %6, align 8
  %41 = getelementptr inbounds %struct.client_config, %struct.client_config* %40, i32 0, i32 12
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call %struct.option* @parse_option_decl(i32* %39, i32* %43)
  store %struct.option* %44, %struct.option** %9, align 8
  %45 = load %struct.option*, %struct.option** %9, align 8
  %46 = icmp ne %struct.option* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32, i32* @ACTION_SUPERSEDE, align 4
  %49 = load %struct.client_config*, %struct.client_config** %6, align 8
  %50 = getelementptr inbounds %struct.client_config, %struct.client_config* %49, i32 0, i32 11
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.option*, %struct.option** %9, align 8
  %53 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %38
  br label %199

57:                                               ; preds = %3
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.client_config*, %struct.client_config** %6, align 8
  %60 = getelementptr inbounds %struct.client_config, %struct.client_config* %59, i32 0, i32 12
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call %struct.option* @parse_option_decl(i32* %58, i32* %62)
  store %struct.option* %63, %struct.option** %9, align 8
  %64 = load %struct.option*, %struct.option** %9, align 8
  %65 = icmp ne %struct.option* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load i32, i32* @ACTION_APPEND, align 4
  %68 = load %struct.client_config*, %struct.client_config** %6, align 8
  %69 = getelementptr inbounds %struct.client_config, %struct.client_config* %68, i32 0, i32 11
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.option*, %struct.option** %9, align 8
  %72 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %57
  br label %199

76:                                               ; preds = %3
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.client_config*, %struct.client_config** %6, align 8
  %79 = getelementptr inbounds %struct.client_config, %struct.client_config* %78, i32 0, i32 12
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call %struct.option* @parse_option_decl(i32* %77, i32* %81)
  store %struct.option* %82, %struct.option** %9, align 8
  %83 = load %struct.option*, %struct.option** %9, align 8
  %84 = icmp ne %struct.option* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load i32, i32* @ACTION_PREPEND, align 4
  %87 = load %struct.client_config*, %struct.client_config** %6, align 8
  %88 = getelementptr inbounds %struct.client_config, %struct.client_config* %87, i32 0, i32 11
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.option*, %struct.option** %9, align 8
  %91 = getelementptr inbounds %struct.option, %struct.option* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %86, i32* %93, align 4
  br label %94

94:                                               ; preds = %85, %76
  br label %199

95:                                               ; preds = %3
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.client_config*, %struct.client_config** %6, align 8
  %98 = getelementptr inbounds %struct.client_config, %struct.client_config* %97, i32 0, i32 10
  %99 = call i32 @parse_string_list(i32* %96, i32* %98, i32 1)
  br label %199

100:                                              ; preds = %3
  %101 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %102 = icmp ne %struct.interface_info* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %106 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %105, i32 0, i32 0
  %107 = call i32 @parse_hardware_param(i32* %104, i32* %106)
  br label %112

108:                                              ; preds = %100
  %109 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @skip_to_semi(i32* %110)
  br label %112

112:                                              ; preds = %108, %103
  br label %199

113:                                              ; preds = %3
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.client_config*, %struct.client_config** %6, align 8
  %116 = getelementptr inbounds %struct.client_config, %struct.client_config* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @parse_option_list(i32* %114, i32 %117)
  %119 = load %struct.client_config*, %struct.client_config** %6, align 8
  %120 = getelementptr inbounds %struct.client_config, %struct.client_config* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  br label %199

121:                                              ; preds = %3
  %122 = load %struct.client_config*, %struct.client_config** %6, align 8
  %123 = getelementptr inbounds %struct.client_config, %struct.client_config* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memset(i32 %124, i32 0, i32 4)
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.client_config*, %struct.client_config** %6, align 8
  %128 = getelementptr inbounds %struct.client_config, %struct.client_config* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @parse_option_list(i32* %126, i32 %129)
  br label %199

131:                                              ; preds = %3
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.client_config*, %struct.client_config** %6, align 8
  %134 = getelementptr inbounds %struct.client_config, %struct.client_config* %133, i32 0, i32 6
  %135 = call i32 @parse_lease_time(i32* %132, i32* %134)
  br label %199

136:                                              ; preds = %3
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.client_config*, %struct.client_config** %6, align 8
  %139 = getelementptr inbounds %struct.client_config, %struct.client_config* %138, i32 0, i32 5
  %140 = call i32 @parse_lease_time(i32* %137, i32* %139)
  br label %199

141:                                              ; preds = %3
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.client_config*, %struct.client_config** %6, align 8
  %144 = getelementptr inbounds %struct.client_config, %struct.client_config* %143, i32 0, i32 4
  %145 = call i32 @parse_lease_time(i32* %142, i32* %144)
  br label %199

146:                                              ; preds = %3
  %147 = load i32*, i32** %4, align 8
  %148 = load %struct.client_config*, %struct.client_config** %6, align 8
  %149 = getelementptr inbounds %struct.client_config, %struct.client_config* %148, i32 0, i32 3
  %150 = call i32 @parse_lease_time(i32* %147, i32* %149)
  br label %199

151:                                              ; preds = %3
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.client_config*, %struct.client_config** %6, align 8
  %154 = getelementptr inbounds %struct.client_config, %struct.client_config* %153, i32 0, i32 2
  %155 = call i32 @parse_lease_time(i32* %152, i32* %154)
  br label %199

156:                                              ; preds = %3
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.client_config*, %struct.client_config** %6, align 8
  %159 = getelementptr inbounds %struct.client_config, %struct.client_config* %158, i32 0, i32 1
  %160 = call i32 @parse_lease_time(i32* %157, i32* %159)
  br label %199

161:                                              ; preds = %3
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @parse_string(i32* %162)
  %164 = load %struct.client_config*, %struct.client_config** %6, align 8
  %165 = getelementptr inbounds %struct.client_config, %struct.client_config* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %199

166:                                              ; preds = %3
  %167 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %168 = icmp ne %struct.interface_info* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %166
  %172 = load i32*, i32** %4, align 8
  %173 = load %struct.client_config*, %struct.client_config** %6, align 8
  %174 = call i32 @parse_interface_declaration(i32* %172, %struct.client_config* %173)
  br label %199

175:                                              ; preds = %3
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @parse_client_lease_statement(i32* %176, i32 1)
  br label %199

178:                                              ; preds = %3
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @parse_client_lease_statement(i32* %179, i32 2)
  br label %199

181:                                              ; preds = %3
  %182 = load i32*, i32** %4, align 8
  %183 = load %struct.client_config*, %struct.client_config** %6, align 8
  %184 = call i32 @parse_reject_statement(i32* %182, %struct.client_config* %183)
  br label %199

185:                                              ; preds = %3
  %186 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @skip_to_semi(i32* %187)
  br label %189

189:                                              ; preds = %185
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @next_token(i8** %8, i32* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @SEMI, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = call i32 (i8*, ...) @parse_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @skip_to_semi(i32* %197)
  br label %199

199:                                              ; preds = %12, %37, %56, %75, %94, %95, %112, %113, %121, %131, %136, %141, %146, %151, %156, %161, %171, %175, %178, %181, %195, %189
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local %struct.option* @parse_option_decl(i32*, i32*) #1

declare dso_local i32 @parse_string_list(i32*, i32*, i32) #1

declare dso_local i32 @parse_hardware_param(i32*, i32*) #1

declare dso_local i32 @parse_warn(i8*, ...) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i32 @parse_option_list(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @parse_lease_time(i32*, i32*) #1

declare dso_local i32 @parse_string(i32*) #1

declare dso_local i32 @parse_interface_declaration(i32*, %struct.client_config*) #1

declare dso_local i32 @parse_client_lease_statement(i32*, i32) #1

declare dso_local i32 @parse_reject_statement(i32*, %struct.client_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
